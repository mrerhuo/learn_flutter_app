import 'package:flutter/material.dart';

class Chapter19Home extends StatefulWidget {
  Chapter19Home({Key key}) : super(key: key);
  @override
  _Chapter19HomeState createState() => _Chapter19HomeState();
}

class _Chapter19HomeState extends State<Chapter19Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //键盘
        appBar: AppBar(
          title: Text('第十九节 测试'),
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
          Text('测试实例，单元测试test目录'),
          Text('测试实例，集成测试test_driver目录'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Chip(
                label: Text('Hello'),
              ),
              Chip(
                label: Text('Hello'),
              ),
              ActionChip(
                key: Key('actionChip'),
                label: Text('$count', key: Key('actionChipLabelText')),
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TestFun {
  static greet(String name) {
    return 'hello $name';
  }
}
