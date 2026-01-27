// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get errorTitle => 'Ошибка';

  @override
  String get validationErrorTitle => 'Ошибка валидации';

  @override
  String get networkErrorTitle => 'Ошибка сети';

  @override
  String get serverErrorTitle => 'Ошибка сервера';

  @override
  String get authErrorTitle => 'Ошибка авторизации';

  @override
  String get failure_1000 => 'Произошла ошибка сервера';

  @override
  String get failure_1001 =>
      'Нет подключения к интернету. Проверьте настройки сети.';

  @override
  String get failure_1002 => 'Время запроса истекло. Попробуйте снова.';

  @override
  String get failure_1003 => 'Вы не авторизованы. Пожалуйста, войдите снова.';

  @override
  String get failure_1004 => 'Запрошенный ресурс не найден.';

  @override
  String get failure_1005 => 'У вас нет доступа к этому ресурсу.';

  @override
  String get failure_2000 => 'Не удалось загрузить кэшированные данные.';

  @override
  String get failure_2001 => 'Ошибка хранилища. Проверьте доступное место.';

  @override
  String get failure_3000 => 'Проверьте введенные данные и попробуйте снова.';

  @override
  String get failure_3001 => 'Введите корректный email адрес.';

  @override
  String failure_3002(String minLength) {
    return 'Пароль должен содержать минимум $minLength символов.';
  }

  @override
  String get failure_3003 =>
      'Пароль слишком простой. Используйте более сложный.';

  @override
  String failure_3004(String field) {
    return 'Поле $field обязательно для заполнения.';
  }

  @override
  String failure_3005(String minKm, String maxKm) {
    return 'Минимальное расстояние ($minKm км) не может быть больше максимального расстояния ($maxKm км).';
  }

  @override
  String failure_3006(String minKm) {
    return 'Минимальное расстояние не может быть отрицательным ($minKm км).';
  }

  @override
  String failure_3007(String maxKm) {
    return 'Максимальное расстояние не может быть отрицательным ($maxKm км).';
  }

  @override
  String get failure_4000 => 'Операция не выполнена из-за бизнес-правил.';

  @override
  String get failure_4001 => 'У вас нет прав для выполнения этого действия.';

  @override
  String get failure_4002 => 'Этот ресурс уже используется.';

  @override
  String get failure_4003 =>
      'Ваш аккаунт заблокирован. Обратитесь в поддержку.';

  @override
  String get failure_4004 => 'Этот email уже зарегистрирован.';

  @override
  String get failure_5000 =>
      'Произошла непредвиденная ошибка. Попробуйте снова.';

  @override
  String get failure_5001 => 'Операция была отменена.';

  @override
  String get sortingDistanceAscending => 'Расстояние: От короткого к длинному';

  @override
  String get sortingDistanceDescending => 'Расстояние: От длинного к короткому';

  @override
  String get sortingDifficultyAscending => 'Сложность: Простые первыми';

  @override
  String get sortingDifficultyDescending => 'Сложность: Сложные первыми';
}
