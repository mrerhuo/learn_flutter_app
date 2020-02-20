import 'package:flutter/material.dart';
import 'index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'chapter18/LocalLangs.dart';
import 'chapter18/SetLangDemo.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // localeResolutionCallback: (locale, supportedLocales) {
        //   return Locale('en', 'US');
        // },
        localizationsDelegates: [
          SetLangDemoDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        locale: const Locale('zh','CN'),//设置本地语言代码
        debugShowCheckedModeBanner: false, //显示开发模式标签
        initialRoute: '/',
        routes: {'/': (context) => Index()},
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //选中动画颜色
            splashColor: Colors.red //水波纹
            ));
  }
}
