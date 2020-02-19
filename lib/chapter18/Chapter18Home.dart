import 'package:flutter/material.dart';

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
        body: I18Demo());
  }
}

class I18Demo extends StatefulWidget {
  I18Demo({Key key}) : super(key: key);

  @override
  _I18DemoState createState() => _I18DemoState();
}

class _I18DemoState extends State<I18Demo> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('22'),
    );
  }
}