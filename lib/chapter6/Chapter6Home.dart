import 'package:flutter/material.dart';
import 'NavBottomBar.dart';
import 'SliverGridDemo.dart';
import 'SilverListDemo.dart';

class Chapter6Home extends StatefulWidget {
  Chapter6Home({Key key}) : super(key: key);
  @override
  _Chapter6HomeState createState() => _Chapter6HomeState();
}

class _Chapter6HomeState extends State<Chapter6Home> {

  String title = "第五节-PageView()";
  _selectAppBar(index) {
    setState(() {
      switch (index) {
        case 0:
          //更新的时候需要加这个，不然界面不刷新
          title = "第五节-PageView";
          break;
        case 1:
          title = "第五节-PageView.builder";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
          body: TabBarView(
            children: <Widget>[
            SliverGridDemo(),
            SilverListDemo(),
          ]),
          bottomNavigationBar: BottomAppBar(
            color: Colors.blue,
            child: NavBottomBar(currentIndex: 0,callBack: (value)=>_selectAppBar(value)),
          ),
        ));
  }
}
