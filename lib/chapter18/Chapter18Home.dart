import 'package:flutter/material.dart';

//import 'LocalLangs.dart';
import 'SetLangDemo.dart';

class Chapter18Home extends StatefulWidget {
  Chapter18Home({Key key}) : super(key: key);
  @override
  _Chapter18HomeState createState() => _Chapter18HomeState();
}

class _Chapter18HomeState extends State<Chapter18Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //键盘
        appBar: AppBar(
          title: Text('第十八节 国际化'),
          centerTitle: true,
        ),
        body: LangDemo());
  }
}

// class I18Demo extends StatefulWidget {
//   I18Demo({Key key}) : super(key: key);

//   @override
//   _I18DemoState createState() => _I18DemoState();
// }

// class _I18DemoState extends State<I18Demo> {
//   @override
//   Widget build(BuildContext context) {
    
//     return Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
          
//          ],
//        ),
//     );
//   }
// }

class LangDemo extends StatelessWidget {
  const LangDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Locale _locale=Localizations.localeOf(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Text('语言代码:${_locale.languageCode}'),
           Text('语言地区:${_locale.toString()}'),
           Text(SetLangDemo.of(context).title),
        ],
      ),
    );
  }
}