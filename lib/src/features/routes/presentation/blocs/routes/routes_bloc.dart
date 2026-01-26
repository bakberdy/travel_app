import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/bloc/state_status.dart';
import 'package:travel_app/src/core/error/failures.dart';
import 'package:travel_app/src/features/routes/domain/entities/get_route_request_parameters_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_difficulty_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_filtering_method_entity.dart';
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
    on<UpdateFiltersEvent>(_onUpdateFilters);
    on<RemoveFilterEvent>(_onRemoveFilter);
    on<UpdateSearchEvent>(_onUpdateSearch);
  }

  Future<void> _onGetRoutes(
    GetRoutesEvent event,
    Emitter<RoutesState> emit,
  ) async {
    // Emit loading state
    emit(state.copyWith(
      routesStatus: StateStatus.loading,
      routesErrorMessage: null,
    ));

    final result = await _getRoutesUsecase(event.params);

    result.fold(
      (Failure failure) {
        emit(state.copyWith(
          routesStatus: StateStatus.error,
          routesErrorMessage: failure.message,
        ));
      },
      (routes) {
        emit(state.copyWith(
          routes: routes,
          routesStatus: StateStatus.success,
        ));
      },
    );
  }

  void _onUpdateSorting(
    UpdateSortingEvent event,
    Emitter<RoutesState> emit,
  ) {
    emit(state.copyWith(sortingMethod: event.sortingMethod));
    
    // Fetch routes with updated sorting
    _fetchRoutesWithCurrentParams();
  }

  void _onUpdateFilters(
    UpdateFiltersEvent event,
    Emitter<RoutesState> emit,
  ) {
    final filters = event.filteringMethods.isEmpty ? null : event.filteringMethods;
    emit(state.copyWith(filteringMethods: filters));
    
    // Fetch routes with updated filters
    _fetchRoutesWithCurrentParams();
  }

  void _onRemoveFilter(
    RemoveFilterEvent event,
    Emitter<RoutesState> emit,
  ) {
    final currentFilters = state.filteringMethods ?? [];
    final updatedFilters = currentFilters.where((filter) => filter != event.filterToRemove).toList();
    
    emit(state.copyWith(
      filteringMethods: updatedFilters.isEmpty ? null : updatedFilters,
    ));
    
    // Fetch routes with updated filters
    _fetchRoutesWithCurrentParams();
  }

  void _onUpdateSearch(
    UpdateSearchEvent event,
    Emitter<RoutesState> emit,
  ) {
    emit(state.copyWith(searchQuery: event.searchQuery));
    
    // Fetch routes with updated search query
    _fetchRoutesWithCurrentParams();
  }

  void _fetchRoutesWithCurrentParams() {
    // Build parameters from current state
    final params = _buildRequestParameters();
    
    // Trigger the get routes event
    add(RoutesEvent.getRoutes(params: params));
  }

  GetRouteRequestParametersEntity _buildRequestParameters() {
    // Extract filter parameters from filteringMethods
    Set<RouteDifficultyEntity>? difficulties;
    double? minKm;
    double? maxKm;
    List<RouteTypeEntity>? types;

    if (state.filteringMethods != null) {
      for (final filter in state.filteringMethods!) {
        filter.map(
          byDifficulty: (value) {
            difficulties ??= {};
            difficulties!.add(value.difficulty);
          },
          byDistanceRange: (value) {
            minKm = value.minKm;
            maxKm = value.maxKm;
          },
          byType: (value) {
            // Note: This might need adjustment based on how types are structured
            // For now, this is a placeholder
          },
        );
      }
    }

    return GetRouteRequestParametersEntity(
      sortingMethod: state.sortingMethod,
      difficulties: difficulties,
      minKm: minKm,
      maxKm: maxKm,
      types: types,
    );
  }
}
