import 'package:flutter/material.dart';

class Chapter20Home extends StatefulWidget {
  Chapter20Home({Key key}) : super(key: key);
  @override
  _Chapter20HomeState createState() => _Chapter20HomeState();
}

class _Chapter20HomeState extends State<Chapter20Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //键盘
        appBar: AppBar(
          title: Text('第二十节 总结'),
          centerTitle: true,
        ),
        body: TestDemoWidget());
  }
}

class TestDemoWidget extends StatefulWidget {
  TestDemoWidget({Key key}) : super(key: key);

  @override
  _TestDemoWidgetState createState() => _TestDemoWidgetState();
}

class _TestDemoWidgetState extends State<TestDemoWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RichText(text: TextSpan(
          children: [
            TextSpan(text: '一课到三课有导航实例，功能有区别，重点是15课的开发模式，估计后续很多时候都会使用该模式进行开发，十八、十九课得结合Readme.md文件进行查看', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
          ]
        ))],
      ),
    );
  }
}
