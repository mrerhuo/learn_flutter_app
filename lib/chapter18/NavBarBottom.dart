import 'package:flutter/material.dart';

class NavBarBottom extends StatefulWidget {
  final callBack;
  final int currentIndex;
  NavBarBottom({Key key,this.currentIndex, this.callBack}) : super(key: key);
  @override
  _NavBarBottomState createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
  void onTapHandler(int index) {
    widget.callBack(index);
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.currentIndex, //当前选中默认是0开始
        type: BottomNavigationBarType.fixed, //强制生效
        fixedColor: Colors.black,//选中颜色
        unselectedItemColor: Colors.grey[300],//未选中颜色
        onTap: onTapHandler,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text('MapDemo')),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list), title: Text('IntlDemo'))
        ]);
  }
}
