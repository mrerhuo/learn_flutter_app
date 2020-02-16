import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.deepPurple, //没选中的默认颜色
      indicatorColor: Colors.deepOrangeAccent, //选中线
      indicatorSize: TabBarIndicatorSize.tab, //选中线的长度
      indicatorWeight: 5, //选中线的高度
      indicatorPadding: EdgeInsets.all(10), //选中线与bar的间距
      tabs: <Widget>[
        Tab(icon: Icon(Icons.local_florist),text: '静态'),
        Tab(icon: Icon(Icons.change_history),text: '动态'),
        Tab(icon: Icon(Icons.change_history),text: '分页'),
        Tab(icon: Icon(Icons.change_history),text: '卡片')
      ],
    );
  }
}
