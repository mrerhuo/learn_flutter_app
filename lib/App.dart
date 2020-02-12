import 'package:flutter/material.dart';
import 'index.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //显示开发模式标签
        initialRoute: '/',
        routes: {
          '/': (context) => Index()
        },
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //选中动画颜色
            splashColor: Colors.red //水波纹
        ));
  }
}
