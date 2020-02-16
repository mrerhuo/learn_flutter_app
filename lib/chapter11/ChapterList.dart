import 'package:flutter/material.dart';
import 'ChipDemo.dart';
import 'ListViewDemo.dart';
import 'StepDemo.dart';

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
        ListItem(title: 'Chip实例', page: ChipDemo()),
        ListItem(title: 'ListView实例', page: ListViewDemo()),
        ListItem(title: 'Step实例', page: StepDemo())
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
