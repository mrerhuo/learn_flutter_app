import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../i18n/lang_messages_all.dart';

class LangDemo2 {
  static Future<LangDemo2> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale=localeName;
      return LangDemo2();
    });
  }

  static LangDemo2 of(BuildContext context) {
    return Localizations.of<LangDemo2>(context, LangDemo2);
  }

  String get title =>
      Intl.message('hello', name: 'title', desc: 'demo localizations');
  String greet(String name) => Intl.message('hello $name',
      name: 'greet', desc: 'greet someone', args: [name]);
}

class LangDemo2Delegate extends LocalizationsDelegate<LangDemo2> {
  const LangDemo2Delegate();

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<LangDemo2> load(Locale locale) {
    return LangDemo2.load(locale);
  }

  @override
  bool shouldReload(LangDemo2Delegate old) => false;
}
