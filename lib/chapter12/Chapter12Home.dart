import 'package:flutter/material.dart';
import 'ChapterList.dart';

class Chapter12Home extends StatefulWidget {
  Chapter12Home({Key key}) : super(key: key);
  @override
  _Chapter12HomeState createState() => _Chapter12HomeState();
}

class _Chapter12HomeState extends State<Chapter12Home> {
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
