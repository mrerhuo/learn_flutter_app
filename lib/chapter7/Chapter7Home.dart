import 'package:flutter/material.dart';
import 'ListInfo.dart';

class Chapter7Home extends StatefulWidget {
  Chapter7Home({Key key}) : super(key: key);
  @override
  _Chapter7HomeState createState() => _Chapter7HomeState();
}

class _Chapter7HomeState extends State<Chapter7Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListInfo(),
        );
  }
}
