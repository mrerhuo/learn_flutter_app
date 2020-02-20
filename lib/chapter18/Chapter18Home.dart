import 'package:flutter/material.dart';
import 'NavBarBottom.dart';
import 'LangViewDemo1.dart';
import 'LangViewDemo2.dart';
class Chapter18Home extends StatefulWidget {
  Chapter18Home({Key key}) : super(key: key);
  @override
  _Chapter18HomeState createState() => _Chapter18HomeState();
}

class _Chapter18HomeState extends State<Chapter18Home> {
    final _widgetList = [
    //body集合，类是与Fragment
    LangViewDemo1(),
    LangViewDemo2()
  ];

  // 当前选中的索引
  int _currentIndex = 0;
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