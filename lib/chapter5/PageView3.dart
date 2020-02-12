import 'package:flutter/material.dart';

class PageView3 extends StatefulWidget {
  PageView3({Key key}) : super(key: key);

  @override
  _PageView3State createState() => _PageView3State();
}

class _PageView3State extends State<PageView3> {

  @override
  Widget build(BuildContext context) {
    return PageView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
         return new Center(
                child: new Text('$index', style: new TextStyle(fontSize: 64.0)),
            );
      },
      childCount: 10
    ));
  }
}
