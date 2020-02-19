import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class CustomLocalLangs {
  final Locale locale;

  CustomLocalLangs(this.locale);

  static Map<String, Map<String, String>> _localized = {
    'en': {'title': 'hello！'},
    'zh': {'title': '你好！'},
  };
  String get title {
    return _localized[locale.languageCode]['title'];
  }
  static CustomLocalLangs of(BuildContext context){
    return Localizations.of<CustomLocalLangs>(context,CustomLocalLangs);
  }
}

class CustomLocalLangsDelegate extends LocalizationsDelegate<CustomLocalLangs>{
  CustomLocalLangsDelegate();
  @override
  Future<CustomLocalLangs> load(Locale locale) {
    return SynchronousFuture<CustomLocalLangs>(CustomLocalLangs(locale));
  }
  @override
  bool isSupported(Locale locale) {
    return true;
  }
  @override
  bool shouldReload(LocalizationsDelegate<CustomLocalLangs> old) {
    return false;
  }
}