import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelDemo extends StatefulWidget {
  ScopedModelDemo({Key key}) : super(key: key);

  @override
  _ScopedModelDemoState createState() => _ScopedModelDemoState();
}

class _ScopedModelDemoState extends State<ScopedModelDemo> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: TestModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('第三方scoped_model状态管理'),
        ),
        body: CounterModelDemo(),
        floatingActionButton: ScopedModelDescendant<TestModel>(
          builder: (context, child, model) {
            return FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: model.addCount,
            );
          },
        ),
      ),
    );
  }
}

class CounterModelDemo extends StatelessWidget {
  const CounterModelDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ContentWidget()],
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
    return ScopedModelDescendant<TestModel>(
      builder: (context, child, model) => ActionChip(
        label: Text('${model._count}'),
        onPressed: model._minusCounter,
      ),
    );
  }
}

class TestModel extends Model {
  int _count = 0;
  int get count => _count;
  void addCount() {
    _count += 1;
    notifyListeners();
  }

  void _minusCounter() {
    _count -= 1;
    notifyListeners();
  }
}
