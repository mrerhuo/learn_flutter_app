import 'package:flutter/material.dart';
import 'BaseProvider.dart';
import 'CounterBloc.dart';

class FloatButtonWidget extends StatelessWidget {
  const FloatButtonWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CounterBloc _bloc=BaseProvider.of(context).bloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        _bloc.counter.add(1);
      },
    );
  }
}