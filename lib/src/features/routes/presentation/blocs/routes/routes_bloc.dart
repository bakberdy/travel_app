import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/bloc/state_status.dart';
import 'package:travel_app/src/core/error/failures.dart';
import 'package:travel_app/src/features/routes/domain/entities/filter_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/get_route_request_parameters_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_category_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_difficulty_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_sorting_method_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/domain/usecases/get_routes_usecase.dart';

part 'routes_event.dart';
part 'routes_state.dart';
part 'routes_bloc.freezed.dart';

@Injectable()
class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  final GetRoutesUsecase _getRoutesUsecase;

  RoutesBloc(this._getRoutesUsecase) : super(const RoutesState()) {
    on<GetRoutesEvent>(_onGetRoutes);
    on<UpdateSortingEvent>(_onUpdateSorting);
    on<UpdateSearchEvent>(_onUpdateSearch);
    on<UpdateFilteringDifficultiesEvent>(_onUpdateFilteringDifficulties);
    on<UpdateFilteringCategoryEvent>(_onUpdateCategory);
    on<UpdateFilteringTypesEvent>(_onUpdateTypes);
    on<UpdateDistanceRangeEvent>(_onUpdateDistanceRange);
    on<RemoveFilterEvent>(_onRemoveFilter);
  }

  Future<void> _onGetRoutes(
    GetRoutesEvent event,
    Emitter<RoutesState> emit,
  ) async {
    // Emit loading state
    emit(
      state.copyWith(
        routesStatus: StateStatus.loading,
        routesErrorMessage: null,
      ),
    );

    final result = await _getRoutesUsecase(event.params);

    result.fold(
      (Failure failure) {
        emit(
          state.copyWith(
            routesStatus: StateStatus.error,
            routesErrorMessage: failure.message,
          ),
        );
      },
      (routes) {
        emit(state.copyWith(routes: routes, routesStatus: StateStatus.success));
      },
    );
  }

  void _onUpdateSorting(UpdateSortingEvent event, Emitter<RoutesState> emit) {
    emit(state.copyWith(sortingMethod: event.sortingMethod));
    _fetchRoutesWithCurrentParams();
  }

  void _onUpdateSearch(UpdateSearchEvent event, Emitter<RoutesState> emit) {
    emit(state.copyWith(searchQuery: event.searchQuery));
    _fetchRoutesWithCurrentParams();
  }

  void _onUpdateCategory(
    UpdateFilteringCategoryEvent event,
    Emitter<RoutesState> emit,
  ) {
    final List<FilterEntity> filters = List.from(state.filters);
    if (event.category != null) {
      filters.removeWhere((filter) => filter.type == FilterType.category);
      filters.add(
        FilterEntity(label: event.category!.name, type: FilterType.category),
      );
    } else {
      filters.removeWhere((filter) => filter.type == FilterType.category);
    }

    emit(state.copyWith(filteringCategory: event.category, filters: filters));
    _fetchRoutesWithCurrentParams();
  }

  void _onUpdateTypes(
    UpdateFilteringTypesEvent event,
    Emitter<RoutesState> emit,
  ) {
    final List<FilterEntity> filters = List.from(state.filters);
    filters.removeWhere((filter) => filter.type == FilterType.type);
    
    if (event.types != null && event.types!.isNotEmpty) {
      for (final type in event.types!) {
        filters.add(
          FilterEntity(label: type.name, type: FilterType.type),
        );
      }
    }

    emit(state.copyWith(filteringTypes: event.types, filters: filters));
    _fetchRoutesWithCurrentParams();
  }

  void _onUpdateFilteringDifficulties(
    UpdateFilteringDifficultiesEvent event,
    Emitter<RoutesState> emit,
  ) {
    final List<FilterEntity> filters = List.from(state.filters);
    filters.removeWhere((filter) => filter.type == FilterType.difficulty);
    
    if (event.difficulties != null && event.difficulties!.isNotEmpty) {
      for (final difficulty in event.difficulties!) {
        filters.add(
          FilterEntity(label: difficulty.name, type: FilterType.difficulty),
        );
      }
    }

    emit(state.copyWith(filteringDifficulties: event.difficulties, filters: filters));
    _fetchRoutesWithCurrentParams();
  }

  void _onUpdateDistanceRange(
    UpdateDistanceRangeEvent event,
    Emitter<RoutesState> emit,
  ) {
    final List<FilterEntity> filters = List.from(state.filters);
    filters.removeWhere((filter) => filter.type == FilterType.range);
    
    if (event.maxKm != null && event.minKm != null) {
      filters.add(
        FilterEntity(label: '${event.minKm}-${event.maxKm}', type: FilterType.range),
      );
    }

    emit(state.copyWith(minKm: event.minKm, maxKm: event.maxKm, filters: filters));
    _fetchRoutesWithCurrentParams();
  }

  void _onRemoveFilter(
    RemoveFilterEvent event,
    Emitter<RoutesState> emit,
  ) {
    final List<FilterEntity> filters = List.from(state.filters);
    filters.removeWhere((filter) => filter == event.filter);

    // Clear the corresponding filter value based on type
    switch (event.filter.type) {
      case FilterType.category:
        emit(state.copyWith(filteringCategory: null, filters: filters));
        break;
      case FilterType.difficulty:
        // Remove this specific difficulty from the set
        final updatedDifficulties = state.filteringDifficulties
            ?.where((d) => d.name != event.filter.label)
            .toSet();
        emit(state.copyWith(
          filteringDifficulties: updatedDifficulties?.isEmpty ?? true ? null : updatedDifficulties,
          filters: filters,
        ));
        break;
      case FilterType.type:
        // Remove this specific type from the set
        final updatedTypes = state.filteringTypes
            ?.where((t) => t.name != event.filter.label)
            .toSet();
        emit(state.copyWith(
          filteringTypes: updatedTypes?.isEmpty ?? true ? null : updatedTypes,
          filters: filters,
        ));
        break;
      case FilterType.range:
        emit(state.copyWith(minKm: null, maxKm: null, filters: filters));
        break;
    }

    _fetchRoutesWithCurrentParams();
  }

  void _fetchRoutesWithCurrentParams() {
    final params = _buildRequestParameters();
    add(RoutesEvent.getRoutes(params: params));
  }

  GetRouteRequestParametersEntity _buildRequestParameters() {
    return GetRouteRequestParametersEntity(
      sortingMethod: state.sortingMethod,
      difficulties: state.filteringDifficulties,
      minKm: state.minKm,
      maxKm: state.maxKm,
      types: state.filteringTypes?.toList(),
      category: state.filteringCategory,
    );
  }
}
