import 'package:flutter/material.dart';
import 'ChapterList.dart';

class Chapter13Home extends StatefulWidget {
  Chapter13Home({Key key}) : super(key: key);
  @override
  _Chapter13HomeState createState() => _Chapter13HomeState();
}

class _Chapter13HomeState extends State<Chapter13Home> {
  final bottomSheetKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 3,
      child: Scaffold(
        key: bottomSheetKey,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('第十三节 Stream(Future) 异步编程的一种')),
        body: ChapterList()),
    );
  }
}
