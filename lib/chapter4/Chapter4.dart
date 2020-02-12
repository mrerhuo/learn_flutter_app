import 'package:flutter/material.dart';
import 'Chapter4Home.dart';

class Chapter4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //显示开发模式标签
        initialRoute: '/',
        routes: {'/': (context) => Chapter4Home()},
        theme: ThemeData(
            primarySwatch: Colors.blue,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //选中动画颜色
            splashColor: Colors.blue //水波纹
        ));
  }
}
