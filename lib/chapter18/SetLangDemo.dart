import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../i18n/messages_all.dart';

class SetLangDemo {
 



  // static Map<String, Map<String, String>> _localized = {
  //   'en': {'title': 'hello！'},
  //   'zh': {'title': '你好！'},
  // };

  static SetLangDemo of(BuildContext context){
    return Localizations.of<SetLangDemo>(context,SetLangDemo);
  }

    static Future<SetLangDemo> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return SetLangDemo();
    });
  }

  String get title => Intl.message(
    'hello',
    name: 'title',
    desc: 'demo localizations.',
  );

  String greet(String name) => Intl.message(
    'hello $name',
    name: 'greet',
    desc: 'greet someone.',
    args: [name],
  );
}

class SetLangDemoDelegate
    extends LocalizationsDelegate<SetLangDemo> {
  SetLangDemoDelegate();

  @override
  Future<SetLangDemo> load(Locale locale) {
    return SetLangDemo.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<SetLangDemo> old) {
    return false;
  }
}