import 'package:flutter/material.dart';

class FloatActionButtonDemo extends StatefulWidget {
  FloatActionButtonDemo({Key key}) : super(key: key);

  @override
  _FloatActionButtonDemoState createState() => _FloatActionButtonDemoState();
}

class _FloatActionButtonDemoState extends State<FloatActionButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('浮动按钮'),
        elevation: 0.0
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        elevation: 0.0,
        backgroundColor: Colors.black,
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(30)//30度为菱形
        // ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//底部剧中和bar容在一起
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Theme.of(context).primaryColor,
          height: 50,
        ),
      ),
    );
  }
}