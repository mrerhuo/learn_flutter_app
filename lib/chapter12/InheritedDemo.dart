import 'package:flutter/material.dart';

class InheritedDemo extends StatefulWidget {
  InheritedDemo({Key key}) : super(key: key);

  @override
  _InheritedDemoState createState() => _InheritedDemoState();
}

class _InheritedDemoState extends State<InheritedDemo> {
  int count = 0;

  void _plusCounter() {
    setState(() {
      count++;
    });
  }

  void _minusCounter() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseInheritedWidget(
      count: count,
      callbackFun: _minusCounter,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Inherited 状态管理实例'),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
              'Inherited 状态管理，相当于定义了顶级Widget,设置对应的属性或方法，提供子控件调用',
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
              ContentWidget()],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _plusCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

//lessWidget父传子
class ContentWidget extends StatelessWidget {
  const ContentWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChipWidget(),
    );
  }
}

//lessWidget父级传子子
class ActionChipWidget extends StatelessWidget {
  const ActionChipWidget({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
     final int counter=BaseInheritedWidget.of(context).count;
     final increaseCount=BaseInheritedWidget.of(context).callbackFun;
    return ActionChip(
      label: Text('$counter'),
      onPressed: increaseCount,
    );
  }
}

class BaseInheritedWidget extends InheritedWidget {
  BaseInheritedWidget({Key key, this.child, this.count, this.callbackFun}) : super(key: key, child: child);
  final int count;
  final VoidCallback callbackFun;
  final Widget child;

  static BaseInheritedWidget of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<BaseInheritedWidget>());
  }

  @override
  bool updateShouldNotify(BaseInheritedWidget oldWidget) {
    return true;
  }
}
