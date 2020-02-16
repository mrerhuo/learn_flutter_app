import 'package:flutter/material.dart';
import 'StateManagementDemo.dart';
import 'InheritedDemo.dart';
import 'ScopedModelDemo.dart';

class ChapterList extends StatefulWidget {
  ChapterList({Key key}) : super(key: key);

  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<ChapterList> {
  

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(title: '基本状态管理', page: StateManagementDemo(title: '基本状态管理',)),
        ListItem(title: 'Inherited状态管理', page: InheritedDemo()),
        ListItem(title: '第三方scoped_model状态管理', page: ScopedModelDemo())
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
