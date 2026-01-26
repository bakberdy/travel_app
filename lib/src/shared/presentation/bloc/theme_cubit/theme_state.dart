part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  final ThemeMode themeMode;

  const ThemeState({required this.themeMode});

  bool get isDark => themeMode == ThemeMode.dark;
  bool get isLight => themeMode == ThemeMode.light;
  bool get isSystem => themeMode == ThemeMode.system;

  @override
  List<Object?> get props => [themeMode];

  @override
  String toString() {
    return 'ThemeState(themeMode: $themeMode)';
  }
}
