import 'package:flutter/material.dart';
import 'StreamDemo.dart';
import 'StreamControllerDemo.dart';
import 'StreamControllerDemo2.dart';

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
        ListItem(title: 'Stream(Future)异步编程StreamSubscription', page: StreamDemo()),
        ListItem(title: 'Stream(Future)异步编程StreamController', page: StreamControllerDemo()),
        ListItem(title: 'Stream(Future)异步编程多次订阅', page: StreamControllerDemo2())
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key key, this.title, this.page}) : super(key: key);
  final String title;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
