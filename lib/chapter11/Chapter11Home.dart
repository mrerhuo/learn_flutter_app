import 'package:flutter/material.dart';
import 'ChapterList.dart';

class Chapter11Home extends StatefulWidget {
  Chapter11Home({Key key}) : super(key: key);
  @override
  _Chapter11HomeState createState() => _Chapter11HomeState();
}

class _Chapter11HomeState extends State<Chapter11Home> {
  final bottomSheetKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 3,
      child: Scaffold(
        key: bottomSheetKey,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('第十一节 Widget组件2')),
        body: ChapterList()),
    );
  }
}
