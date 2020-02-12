import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('第一节 Hello Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello Fluter',
            textDirection: TextDirection.rtl,//从左向右阅读
            style: TextStyle(
                fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ));
  }
}
