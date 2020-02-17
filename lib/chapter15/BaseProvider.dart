import 'package:flutter/material.dart';
import 'CounterBloc.dart';

class BaseProvider extends InheritedWidget {
  BaseProvider({Key key, this.child, this.bloc}) : super(key: key, child: child);

  final Widget child;
  final CounterBloc bloc;

  static BaseProvider of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<BaseProvider>());
  }

  @override
  bool updateShouldNotify(BaseProvider oldWidget) {
    return true;
  }
}