import 'package:flutter/material.dart';

class NavBottomBar extends StatefulWidget {
  final callBack;
  final int currentIndex;
  final TabController tabController;
  NavBottomBar({Key key, this.tabController, this.currentIndex, this.callBack})
      : super(key: key);
  @override
  _NavBottomBarState createState() => _NavBottomBarState();
}

class _NavBottomBarState extends State<NavBottomBar> {
  void _selectAppBar(int index) {
    widget.callBack(index);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      unselectedLabelColor: Colors.deepPurple, //没选中的默认颜色
      indicatorColor: Colors.blue, //选中线
      indicatorSize: TabBarIndicatorSize.tab, //选中线的长度
      tabs: <Widget>[
        Tab(icon: Icon(Icons.local_florist)),
        Tab(icon: Icon(Icons.change_history)),
        Tab(icon: Icon(Icons.directions_bike)),
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.delete_outline)),
        Tab(icon: Icon(Icons.color_lens))
      ],
      onTap: _selectAppBar,
    );
  }
}
