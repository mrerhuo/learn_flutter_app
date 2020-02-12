import 'package:flutter/material.dart';

class FloatActionButtonTextDemo extends StatefulWidget {
  FloatActionButtonTextDemo({Key key}) : super(key: key);

  @override
  _FloatActionButtonTextDemoState createState() => _FloatActionButtonTextDemoState();
}

class _FloatActionButtonTextDemoState extends State<FloatActionButtonTextDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('浮动按钮-带文字'),
        elevation: 0.0
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text('Add'),
        onPressed: (){},
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
    );
  }
}