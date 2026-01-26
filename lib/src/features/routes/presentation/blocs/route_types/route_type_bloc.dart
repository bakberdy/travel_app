import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/bloc/state_status.dart';
import 'package:travel_app/src/core/error/failures.dart';
import 'package:travel_app/src/core/usecases/usecase.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/domain/usecases/get_route_types_usecase.dart';

part 'route_type_event.dart';
part 'route_type_state.dart';
part 'route_type_bloc.freezed.dart';

@Injectable()
class RouteTypeBloc extends Bloc<RouteTypeEvent, RouteTypeState> {
  final GetRouteTypesUsecase _getRouteTypesUsecase;
  RouteTypeBloc(this._getRouteTypesUsecase) : super(RouteTypeState()) {
    on<GetRouteTypesEvent>((event, emit) async {
      // Emit loading state
      emit(state.copyWith(
        routeTypesStatus: StateStatus.loading,
        routeTypeErrorMessage: null,
      ));

      final result = await _getRouteTypesUsecase(NoParams());

      result.fold(
        (Failure failure) {
          emit(state.copyWith(
            routeTypesStatus: StateStatus.error,
            routeTypeErrorMessage: failure.message,
          ));
        },
        (routeTypes) {
          emit(state.copyWith(
            routeTypes: routeTypes,
            routeTypesStatus: StateStatus.success,
          ));
        },
      );
    });
  }
}
