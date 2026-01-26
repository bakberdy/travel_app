part of 'locale_cubit.dart';

class LocaleState extends Equatable {
  final Locale locale;

  const LocaleState({required this.locale});

  String get languageCode => locale.languageCode;

  @override
  List<Object?> get props => [locale];

  @override
  String toString() {
    return 'LocaleState(locale: $locale)';
  }
}
