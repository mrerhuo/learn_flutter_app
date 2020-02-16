import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  StateManagementDemo({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _counter = 0;

  void _plusCounter() {
    setState(() {
      _counter++;
    });
  }

  void _minusCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '基本传值',
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            ActionChip(
              label: Text('$_counter'),
              onPressed: _minusCounter,
            ),
            Text(
              '父传子',
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            ChipWidget(
              count: _counter,
            ), //lessWidget父传子
            Text(
              '子传父：方法回调',
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            ActionChipWidget(count: _counter, increaseCount: _minusCounter), //lessWidget子传父
            Text(
              '父传子，子在传子',
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            ContentWidget(count: _counter, increaseCount: _minusCounter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _plusCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

//lessWidget父传子
class ChipWidget extends StatelessWidget {
  final int count;
  const ChipWidget({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text('$count'),
    );
  }
}

//lessWidget子传父
class ContentWidget extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;
  const ContentWidget({Key key, this.count, this.increaseCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChipWidget(count: count, increaseCount: increaseCount),
    );
  }
}

//lessWidget子传父
class ActionChipWidget extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;
  const ActionChipWidget({Key key, this.count, this.increaseCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}
