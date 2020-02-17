import 'package:flutter/material.dart';
import 'BloCDemo.dart';
import 'FloatButtonWidget.dart';
import 'BaseProvider.dart';
import 'CounterBloc.dart';

class Chapter15Home extends StatefulWidget {
  Chapter15Home({Key key}) : super(key: key);
  @override
  _Chapter15HomeState createState() => _Chapter15HomeState();
}

class _Chapter15HomeState extends State<Chapter15Home> {
  @override
  Widget build(BuildContext context) {
    return BaseProvider(
      bloc: CounterBloc(),
      child: Scaffold(
      resizeToAvoidBottomInset: false, //键盘
      appBar: AppBar(title: Text('第十五节 BLoCDemo')),
      body: BloCDemo(),
      floatingActionButton: FloatButtonWidget(),
    ),
    );
  }
}