import 'package:flutter/material.dart';
import 'BaseProvider.dart';
import 'CounterBloc.dart';

class BloCDemo extends StatefulWidget {
  BloCDemo({Key key}) : super(key: key);

  @override
  _BloCDemoState createState() => _BloCDemoState();
}

class _BloCDemoState extends State<BloCDemo> {
  @override
  Widget build(BuildContext context) {
    CounterBloc _bloc = BaseProvider.of(context).bloc;
    return Container(
      child: Center(
        child: StreamBuilder(
          initialData: 0,
          stream: _bloc.total,
          builder: (context, snapshot) => ActionChip(
            label: Text('${snapshot.data}'),
            onPressed: () {
              _bloc.counter.add(-1);
            },
          ),
        ),
      ),
    );
  }
}
