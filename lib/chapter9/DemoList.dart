import 'package:flutter/material.dart';
import 'FloatActionButtonDemo.dart';
import 'FloatActionButtonTextDemo.dart';
import 'ButtonDemo.dart';
import 'PopupMenuDemo.dart';

class DemoList extends StatefulWidget {
  DemoList({Key key}) : super(key: key);

  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(title: 'FloatActionButton(浮动按钮)-无文字',page: FloatActionButtonDemo()),
        ListItem(title: 'FloatActionButton(浮动按钮)-有文字',page: FloatActionButtonTextDemo()),
        ListItem(title: 'Button 实例',page: ButtonDemo()),
        ListItem(title: 'PopupMenu 弹出菜单实例',page: PopupMenuDemo())
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key key,this.title,this.page}) : super(key: key);
  final String title;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder:(context)=>page)
        );
      },
    );
  }
}