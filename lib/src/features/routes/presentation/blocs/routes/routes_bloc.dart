
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes_event.dart';
part 'routes_state.dart';
part 'routes_bloc.freezed.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  RoutesBloc() : super(RoutesState()) {
    on<RoutesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
