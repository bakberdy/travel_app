import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/bloc/state_status.dart';
import 'package:travel_app/src/core/error/failures.dart';
import 'package:travel_app/src/features/routes/domain/entities/get_route_request_parameters_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/domain/usecases/get_routes_usecase.dart';

part 'routes_event.dart';
part 'routes_state.dart';
part 'routes_bloc.freezed.dart';

@Injectable()
class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  final GetRoutesUsecase _getRoutesUsecase;

  RoutesBloc(this._getRoutesUsecase) : super(const RoutesState()) {
    on<GetRoutesEvent>(_onGetRoutes);
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
}
