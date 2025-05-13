import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

const kurdishLocaleDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE d.MM.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

const kuDateSymbols2 = {
  'NAME': 'ku',
  'ERAS': ['پ.ز', 'ز'],
  'ERANAMES': ['پێش زاینی', 'زاینی'],
  'NARROWMONTHS': [
    'ک.د', 'ش', 'ز', 'ن', 'م', 'ح', 'ت', 'ئ', 'ل', 'ت.ی', 'ت.د', 'ک.ی'
  ],
  'STANDALONENARROWMONTHS': [
    'ک.د', 'ش', 'ز', 'ن', 'م', 'ح', 'ت', 'ئ', 'ل', 'ت.ی', 'ت.د', 'ک.ی'
  ],
  'MONTHS': [
    'کانونی دووەم', 'شوبات', 'ئازار', 'نیسان', 'مایس', 'حوزەیران',
    'تەمموز', 'ئاب', 'ئەیلوول', 'تشرینی یەکەم', 'تشرینی دووەم', 'کانونی یەکەم',
  ],
  'STANDALONEMONTHS': [
    'کانونی دووەم', 'شوبات', 'ئازار', 'نیسان', 'مایس', 'حوزەیران',
    'تەمموز', 'ئاب', 'ئەیلوول', 'تشرینی یەکەم', 'تشرینی دووەم', 'کانونی یەکەم',
  ],
  'SHORTMONTHS': [
    'کانونی دووەم', 'شوبات', 'ئازار', 'نیسان', 'مایس', 'حوزەیران',
    'تەمموز', 'ئاب', 'ئەیلوول', 'تشرینی یەکەم', 'تشرینی دووەم', 'کانونی یەکەم',
  ],
  'STANDALONESHORTMONTHS': [
    'کانونی دووەم', 'شوبات', 'ئازار', 'نیسان', 'مایس', 'حوزەیران',
    'تەمموز', 'ئاب', 'ئەیلوول', 'تشرینی یەکەم', 'تشرینی دووەم', 'کانونی یەکەم',
  ],
  'WEEKDAYS': [
    'یەکشەممە', 'دووشەممە', 'سێشەممە', 'چوارشەممە', 'پێنجشەممە', 'هەینی', 'شەممە'
  ],
  'STANDALONEWEEKDAYS': [
    'یەکشەممە', 'دووشەممە', 'سێشەممە', 'چوارشەممە', 'پێنجشەممە', 'هەینی', 'شەممە'
  ],
  'SHORTWEEKDAYS': [
    'یەکشەم', 'دووشەم', 'سێشەم', 'چوارشەم', 'پێنجشەم', 'هەینی', 'شەممە'
  ],
  'STANDALONESHORTWEEKDAYS': [
    'یەکشەم', 'دووشەم', 'سێشەم', 'چوارشەم', 'پێنجشەم', 'هەینی', 'شەممە'
  ],
  'NARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'STANDALONENARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'SHORTQUARTERS': ['چ١', 'چ٢', 'چ٣', 'چ٤'],
  'QUARTERS': ['چارەکی یەکەم', 'چارەکی دووەم', 'چارەکی سێیەم', 'چارەکی چوارەم'],
  'AMPMS': ['پ.ن', 'د.ن'],
  'DATEFORMATS': [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd‏/MM‏/y',
    'd‏/M‏/y',
  ],
  'TIMEFORMATS': [
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
  'ZERODIGIT': '٠',
  'FIRSTDAYOFWEEK': 5,
  'WEEKENDRANGE': [4, 5],
  'FIRSTWEEKCUTOFFDAY': 3
};

class KurdishCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const KurdishCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
    
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: kurdishLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(kuDateSymbols2),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      KurdishCupertinoLocalizations(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        singleDigitHourFormat: intl.DateFormat('h a', localeName),
        singleDigitMinuteFormat: intl.DateFormat('m', localeName),
        doubleDigitMinuteFormat: intl.DateFormat('mm', localeName),
        dayFormat: intl.DateFormat('d', localeName),
        singleDigitSecondFormat: intl.DateFormat('s', localeName),
      ),
    );
  }

  @override
  bool shouldReload(KurdishCupertinoLocalizationsDelegate old) => false;
}

class KurdishCupertinoLocalizations extends GlobalCupertinoLocalizations {
  const KurdishCupertinoLocalizations({
    super.localeName = 'ku',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.mediumDateFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.doubleDigitMinuteFormat,
    required super.dayFormat,
    required super.singleDigitSecondFormat,
    required super.decimalFormat,
  });

  @override
  String get alertDialogLabel => 'ئاگادارکردنەوە';
  @override
  String get anteMeridiemAbbreviation => 'پ.ن';
  @override
  String get postMeridiemAbbreviation => 'د.ن';
  @override
  String get todayLabel => 'ئەمڕۆ';
  @override
  String get copyButtonLabel => 'کۆپی';
  @override
  String get cutButtonLabel => 'بڕین';
  @override
  String get pasteButtonLabel => 'پەیست';
  @override
  String get selectAllButtonLabel => 'دیاریکردنی هەموو';
  @override
  String get modalBarrierDismissLabel => 'لادان';
  @override
  String get noSpellCheckReplacementsLabel => 'هیچ جێگرەوەیەکی پشکنینی ڕێنووسی نییە';
  @override
  String get searchTextFieldPlaceholderLabel => 'گەڕان';
  @override
  String get datePickerDateOrderString => 'بەروار';
  @override
  String get datePickerDateTimeOrderString => 'کات';
  @override
  String? get datePickerHourSemanticsLabelOther => 'کاتژمێری هەڵبژاردنی بەروار';
  @override
  String? get datePickerMinuteSemanticsLabelOther => 'خولەکی هەڵبژاردنی بەروار';
  @override
  String get tabSemanticsLabelRaw => r'تاب $tabIndex لە $tabCount';
  @override
  String? get timerPickerHourLabelOther => 'کاتژمێر';
  @override
  String? get timerPickerMinuteLabelOther => 'خولەک';
  @override
  String? get timerPickerSecondLabelOther => 'چرکە';
  @override
  String get timerPickerHourLabelsOne => 'کاتژمێر';
  @override
  String get timerPickerHourLabelsOther => 'کاتژمێر';
  @override
  String get timerPickerMinuteLabelsOne => 'خولەک';
  @override
  String get timerPickerMinuteLabelsOther => 'خولەک';
  @override
  String get timerPickerSecondLabelsOne => 'چرکە';
  @override
  String get timerPickerSecondLabelsOther => 'چرکە';
  @override
  String get keyboardKeyAlt => 'Alt';
  @override
  String get keyboardKeyControl => 'Control';
  @override
  String get keyboardKeyMeta => 'Meta';
  @override
  String get keyboardKeyShift => 'Shift';
  @override
  String get menuDismissLabel => 'داخستن';
  @override
  String get searchWebButtonLabel => 'گەڕان لە وێب';
  @override
  String get lookUpButtonLabel => 'گەڕان';
  @override
  String get shareButtonLabel => 'هاوبەشکردن';
  @override
  String get clearButtonLabel => '';

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      KurdishCupertinoLocalizationsDelegate();
}
