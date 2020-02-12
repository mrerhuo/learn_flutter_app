import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
   @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
      debugPrint('当前选中：$index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,//当前选中默认是0开始
        type: BottomNavigationBarType.fixed,//强制生效
        fixedColor: Colors.black,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('Explore')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('History')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('List')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('My')),
        ]);
  }
}
