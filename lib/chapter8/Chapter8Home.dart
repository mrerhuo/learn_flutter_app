import 'package:flutter/material.dart';
import 'TextFieldWidget.dart';
import 'FormWidget.dart';

class Chapter8Home extends StatefulWidget {
  Chapter8Home({Key key}) : super(key: key);
  @override
  _Chapter8HomeState createState() => _Chapter8HomeState();
}

class _Chapter8HomeState extends State<Chapter8Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('第八节 Form表单实例'),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.local_florist)),
          Tab(icon: Icon(Icons.change_history)),
        ]),
      ),
      body: TabBarView(
            children: <Widget>[
              TextFieldWidget(),
              FormWidget(),
            ],
          ),
    ));
  }
}
