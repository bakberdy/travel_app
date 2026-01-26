import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.system));

  void setThemeMode(ThemeMode mode) {
    emit(ThemeState(themeMode: mode));
  }

  void toggleTheme() {
    if (state.themeMode == ThemeMode.light) {
      emit(const ThemeState(themeMode: ThemeMode.dark));
    } else {
      emit(const ThemeState(themeMode: ThemeMode.light));
    }
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    try {
      final themeModeString = json['themeMode'] as String;
      final themeMode = ThemeMode.values.firstWhere(
        (mode) => mode.toString() == themeModeString,
        orElse: () => ThemeMode.system,
      );
      return ThemeState(themeMode: themeMode);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {
      'themeMode': state.themeMode.toString(),
    };
  }
}
