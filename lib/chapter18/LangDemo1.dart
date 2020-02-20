import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'show SynchronousFuture;

class LangDemo1 {
  final Locale locale;
  LangDemo1(this.locale);
  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Hello World',
      'appName':'Insist on learning App'
    },
    'zh': {
      'title': '你好，世界！',
      'appName':'坚持学习App'
    },
  };
  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
    String get appName {
    return _localizedValues[locale.languageCode]['appName'];
  }
  static LangDemo1 of(BuildContext context) {
    return Localizations.of<LangDemo1>(context, LangDemo1);
  }
}

class LangDemo1Delegate extends LocalizationsDelegate<LangDemo1> {
  const LangDemo1Delegate();

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<LangDemo1> load(Locale locale) {
    return SynchronousFuture<LangDemo1>(LangDemo1(locale));
  }

  @override
  bool shouldReload(LangDemo1Delegate old) => false;
}