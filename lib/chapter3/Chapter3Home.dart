import 'package:flutter/material.dart';
import 'NavBarBottom.dart';
import 'TextDemo.dart';
import 'RichTextDemo.dart';
import 'ContainerDemo.dart';


class Chapter3Home extends StatefulWidget {
  Chapter3Home({Key key}) : super(key: key);

  @override
  _Chapter3HomeState createState() => _Chapter3HomeState();
}

class _Chapter3HomeState extends State<Chapter3Home> {

  final _widgetList = [
    //body集合，类是与Fragment
    TextDemo(),
    RichTextDemo(),
    ContainerDemo(),
  ];

  // 当前选中的索引
  int _currentIndex = 1;
  //item点击事件
  _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[_currentIndex],
      bottomNavigationBar: NavBarBottom(currentIndex:_currentIndex,callBack: (value)=>_onTapHandler(value)),
    );
  }
}
