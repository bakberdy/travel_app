import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/features/routes/domain/entities/get_route_request_parameters_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_category_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/domain/usecases/get_routes_usecase.dart';

part 'routes_by_category_event.dart';
part 'routes_by_category_state.dart';
part 'routes_by_category_bloc.freezed.dart';

@Injectable()
class RoutesByCategoryBloc
    extends Bloc<RoutesByCategoryEvent, RoutesByCategoryState> {
  final GetRoutesUsecase _getRoutesUsecase;
  RoutesByCategoryBloc(this._getRoutesUsecase)
    : super(const RoutesByCategoryState()) {
    on<LoadPopularRoutesEvent>(_onLoadPopularRoutes);
    on<LoadRecommendedRoutesEvent>(_onLoadRecommendedRoutes);
    on<LoadAllRoutesEvent>(_onLoadAllRoutes);
  }

  Future<void> _onLoadPopularRoutes(
    LoadPopularRoutesEvent event,
    Emitter<RoutesByCategoryState> emit,
  ) async {
    emit(state.copyWith(isLoadingPopular: true, popularError: null));

    final params = GetRouteRequestParametersEntity(
      category: RouteCategoryEntity.popular,
      types: [?event.type],
    );

    final result = await _getRoutesUsecase(params);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingPopular: false,
            popularError: failure.message,
          ),
        );
      },
      (routes) {
        emit(
          state.copyWith(
            popularRoutes: routes,
            isLoadingPopular: false,
            popularError: null,
          ),
        );
      },
    );
  }

  Future<void> _onLoadRecommendedRoutes(
    LoadRecommendedRoutesEvent event,
    Emitter<RoutesByCategoryState> emit,
  ) async {
    emit(state.copyWith(isLoadingRecommended: true, recommendedError: null));

    final params = GetRouteRequestParametersEntity(
      category: RouteCategoryEntity.recommended,
      types: [?event.type],
    );

    final result = await _getRoutesUsecase(params);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingRecommended: false,
            recommendedError: failure.message,
          ),
        );
      },
      (routes) {
        emit(
          state.copyWith(
            recommendedRoutes: routes,
            isLoadingRecommended: false,
            recommendedError: null,
          ),
        );
      },
    );
  }

  Future<void> _onLoadAllRoutes(
    LoadAllRoutesEvent event,
    Emitter<RoutesByCategoryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingPopular: true,
        isLoadingRecommended: true,
        popularError: null,
        recommendedError: null,
      ),
    );

    final popularParams = GetRouteRequestParametersEntity(
      category: RouteCategoryEntity.popular,
      types: [?event.type],
    );

    final recommendedParams = GetRouteRequestParametersEntity(
      category: RouteCategoryEntity.recommended,
      types: [?event.type],
    );

    final results = await Future.wait([
      _getRoutesUsecase(popularParams),
      _getRoutesUsecase(recommendedParams),
    ]);

    final popularResult = results[0];
    final recommendedResult = results[1];

    List<RouteEntity> popularRoutes = [];
    String? popularError;
    List<RouteEntity> recommendedRoutes = [];
    String? recommendedError;

    popularResult.fold(
      (failure) => popularError = failure.message,
      (routes) => popularRoutes = routes,
    );

    recommendedResult.fold(
      (failure) => recommendedError = failure.message,
      (routes) => recommendedRoutes = routes,
    );

    emit(
      state.copyWith(
        popularRoutes: popularRoutes,
        recommendedRoutes: recommendedRoutes,
        isLoadingPopular: false,
        isLoadingRecommended: false,
        popularError: popularError,
        recommendedError: recommendedError,
      ),
    );
  }
}
