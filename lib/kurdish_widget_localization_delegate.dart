import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  const KurdishWidgetLocalizations();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get reorderItemDown => 'بڕۆ خوارەوە';
  @override
  String get reorderItemLeft => 'بڕۆ لای چەپ';
  @override
  String get reorderItemRight => 'بڕۆ لای راست';
  @override
  String get reorderItemToEnd => 'بڕۆ کۆتایی';
  @override
  String get reorderItemToStart => 'بڕۆ سەرەتا';
  @override
  String get reorderItemUp => 'بڕۆ سەرەوە';
}

class _KurdishWidgetLocalizationsDelegate 
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishWidgetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    return SynchronousFuture<WidgetsLocalizations>(
      const KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishWidgetLocalizationsDelegate old) => false;
}
