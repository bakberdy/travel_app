// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get errorTitle => 'Қате';

  @override
  String get validationErrorTitle => 'Тексеру қатесі';

  @override
  String get networkErrorTitle => 'Желі қатесі';

  @override
  String get serverErrorTitle => 'Сервер қатесі';

  @override
  String get authErrorTitle => 'Авторизация қатесі';

  @override
  String get failure_1000 => 'Сервер қатесі орын алды';

  @override
  String get failure_1001 =>
      'Интернет байланысы жоқ. Желі параметрлерін тексеріңіз.';

  @override
  String get failure_1002 => 'Сұраныс уақыты өтті. Қайталап көріңіз.';

  @override
  String get failure_1003 => 'Сіз авторизацияланбадыңыз. Қайта кіріңіз.';

  @override
  String get failure_1004 => 'Сұралған ресурс табылмады.';

  @override
  String get failure_1005 => 'Сізде бұл ресурсқа қол жеткізу құқығы жоқ.';

  @override
  String get failure_2000 => 'Кэштелген деректерді жүктеу мүмкін болмады.';

  @override
  String get failure_2001 => 'Сақтау қатесі. Қолжетімді орынды тексеріңіз.';

  @override
  String get failure_3000 =>
      'Енгізілген деректерді тексеріп, қайталап көріңіз.';

  @override
  String get failure_3001 => 'Дұрыс email мекенжайын енгізіңіз.';

  @override
  String failure_3002(String minLength) {
    return 'Құпия сөз кемінде $minLength таңбадан тұруы керек.';
  }

  @override
  String get failure_3003 => 'Құпия сөз тым қарапайым. Күрделірек қолданыңыз.';

  @override
  String failure_3004(String field) {
    return '$field өрісін толтыру міндетті.';
  }

  @override
  String failure_3005(String minKm, String maxKm) {
    return 'Минималды қашықтық ($minKm км) максималды қашықтықтан ($maxKm км) үлкен бола алмайды.';
  }

  @override
  String failure_3006(String minKm) {
    return 'Минималды қашықтық теріс бола алмайды ($minKm км).';
  }

  @override
  String failure_3007(String maxKm) {
    return 'Максималды қашықтық теріс бола алмайды ($maxKm км).';
  }

  @override
  String get failure_4000 =>
      'Операция бизнес ережелеріне байланысты орындалмады.';

  @override
  String get failure_4001 => 'Сізде бұл әрекетті орындауға құқық жоқ.';

  @override
  String get failure_4002 => 'Бұл ресурс әлдеқашан пайдаланылуда.';

  @override
  String get failure_4003 =>
      'Сіздің аккаунтыңыз бұғатталған. Қолдау қызметіне хабарласыңыз.';

  @override
  String get failure_4004 => 'Бұл email әлдеқашан тіркелген.';

  @override
  String get failure_5000 => 'Күтпеген қате орын алды. Қайталап көріңіз.';

  @override
  String get failure_5001 => 'Операция болдырылмады.';

  @override
  String get sortingDistanceAscending => 'Қашықтық: Қысқадан ұзынға';

  @override
  String get sortingDistanceDescending => 'Қашықтық: Ұзыннан қысқаға';

  @override
  String get sortingDifficultyAscending => 'Қиындық: Оңайлары бірінші';

  @override
  String get sortingDifficultyDescending => 'Қиындық: Қиындары бірінші';
}
