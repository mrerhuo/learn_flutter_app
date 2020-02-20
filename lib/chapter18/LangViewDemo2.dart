import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'LangDemo2.dart';

class LangViewDemo2 extends StatefulWidget {
  LangViewDemo2({Key key}) : super(key: key);
  @override
  _LangViewDemo2HomeState createState() => _LangViewDemo2HomeState();
}


class _LangViewDemo2HomeState extends State<LangViewDemo2> {
  Locale _locale = const Locale('zh','CH');
  _changeLang(value){
    setState(() {
      switch(value){
        case 'zh':
        _locale = const Locale('zh','CH');
        break;
        case 'en':
        _locale = const Locale('en','US');
        break;
      }
    });
    debugPrint(value);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //显示开发模式标签
        ////根据系统设置默认语言
        // localeResolutionCallback: (locale, supportedLocales) {
        //   return Locale('en', 'US');
        // },
        localizationsDelegates: [
          LangDemo2Delegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        locale: _locale, //测试切换本地语言显示
        title: 'Map 语言国际化',
        home: Demo2View(changeLang:_changeLang),
        theme: ThemeData(
            primaryColor: Colors.black,
            primarySwatch: Colors.blue,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //选中动画颜色
            splashColor: Colors.blue //水波纹
            ));
  }
}


class Demo2View extends StatelessWidget {
  final changeLang;

  const Demo2View({Key key, this.changeLang}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Locale _locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Intl语言国际化'),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: changeLang,
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('中文'),
                      value: 'zh',
                    ),
                    PopupMenuItem(
                      child: Text('英文'),
                      value: 'en',
                    )
                  ])
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('使用Intl方式进行设置，右上角可以切换语言'),
            Text('语言代码:${_locale.languageCode}'),
            Text('语言地区:${_locale.toString()}'),
            Text(LangDemo2.of(context).title),
            Text(LangDemo2.of(context).greet('zhang san '))
          ],
        ),
      ),
    );
  }
}
