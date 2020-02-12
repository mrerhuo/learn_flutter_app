import 'package:flutter/material.dart';
import 'DemoList.dart';

class Chapter9Home extends StatefulWidget {
  Chapter9Home({Key key}) : super(key: key);
  @override
  _Chapter9HomeState createState() => _Chapter9HomeState();
}

class _Chapter9HomeState extends State<Chapter9Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('第九节 Button实例')
        ),
        body: DemoList());
  }
}
