import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../logger.dart';

/// Observer that logs all Bloc/Cubit state changes and events for debugging.
///
/// This class integrates with the Bloc library to monitor:
/// - Bloc/Cubit creation and disposal
/// - State changes
/// - Events being added to Blocs
/// - State transitions
/// - Errors that occur during event processing
///
/// All logs are output in a single line format for easy scanning.
class LoggerBlocObserver implements BlocObserver {
  /// Helper to extract a clean bloc/cubit name
  String _getBlocName(BlocBase bloc) {
    return bloc.runtimeType.toString();
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    final blocName = _getBlocName(bloc);
    Logger.debug(
      'Create $blocName',
      category: LogCategory.bloc,
    );
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    final blocName = _getBlocName(bloc);
    Logger.debug(
      'Close $blocName',
      category: LogCategory.bloc,
    );
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    final blocName = _getBlocName(bloc);
    final currentState = change.currentState.toString();
    final nextState = change.nextState.toString();
    
    Logger.info(
      'Change $blocName: $currentState -> $nextState',
      category: LogCategory.bloc,
    );
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    final blocName = _getBlocName(bloc);
    final eventName = event.toString();
    
    Logger.info(
      'Event $blocName: $eventName',
      category: LogCategory.bloc,
    );
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    final blocName = _getBlocName(bloc);
    final eventName = transition.event.toString();
    final currentState = transition.currentState.toString();
    final nextState = transition.nextState.toString();
    
    Logger.debug(
      'Transition $blocName: $eventName -> $currentState to $nextState',
      category: LogCategory.bloc,
    );
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    final blocName = _getBlocName(bloc);
    
    Logger.error(
      'Error in $blocName: $error',
      category: LogCategory.bloc,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void onDone(Bloc<dynamic, dynamic> bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    final blocName = _getBlocName(bloc);
    final eventName = event?.toString() ?? 'unknown';
    
    if (error != null) {
      Logger.error(
        'Done $blocName: $eventName with error: $error',
        category: LogCategory.bloc,
        error: error,
        stackTrace: stackTrace,
      );
    } else {
      Logger.debug(
        'Done $blocName: $eventName',
        category: LogCategory.bloc,
      );
    }
  }
}

