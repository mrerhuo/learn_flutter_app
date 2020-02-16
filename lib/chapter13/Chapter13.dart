import 'package:flutter/material.dart';
import 'Chapter13Home.dart';

class Chapter13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //显示开发模式标签
        initialRoute: '/',
        routes: {'/': (context) => Chapter13Home()},
        theme: ThemeData(
            primaryColor: Colors.black,
            primarySwatch: Colors.blue,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //选中动画颜色
            splashColor: Colors.blue //水波纹
        ));
  }
}