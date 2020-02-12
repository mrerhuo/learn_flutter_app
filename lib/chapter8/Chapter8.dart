import 'package:flutter/material.dart';
import 'Chapter8Home.dart';

class Chapter8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //显示开发模式标签
        initialRoute: '/',
        routes: {'/': (context) => Chapter8Home()},
        theme: ThemeData(
            primarySwatch: Colors.blue,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //选中动画颜色
            splashColor: Colors.blue //水波纹
        ));
  }
}