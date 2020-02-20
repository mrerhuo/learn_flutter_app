import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'LangDemo1.dart';

class LangViewDemo1 extends StatelessWidget {
  const LangViewDemo1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //显示开发模式标签
        ////根据系统设置默认语言
        // localeResolutionCallback: (locale, supportedLocales) {
        //   return Locale('en', 'US');
        // },
        localizationsDelegates: [
          LangDemo1Delegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        locale: const Locale('en'), //测试切换本地语言显示
        title: 'Map 语言国际化',
        home: Demo1View(),
        theme: ThemeData(
            primaryColor: Colors.black,
            primarySwatch: Colors.blue,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //选中动画颜色
            splashColor: Colors.blue //水波纹
            ));
  }
}

class Demo1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale _locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(LangDemo1.of(context).title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('使用Map方式进行设置'),
            Text('语言代码:${_locale.languageCode}'),
            Text('语言地区:${_locale.toString()}'),
            Text(LangDemo1.of(context).title),
            Text(LangDemo1.of(context).appName)
          ],
        ),
      ),
    );
  }
}
