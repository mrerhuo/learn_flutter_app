import 'package:flutter/material.dart';
import 'hello.dart';
import 'HelloList.dart';
class Chapter1Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('第一节 Hello Flutter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text('Hello Flutter'),
                    onPressed: () {
                      Navigator.of(context).push(
                         MaterialPageRoute(builder: (context)=>Hello())
                      );
                    })),
            Center(
                child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text('List View'),
                    onPressed: () {
                      Navigator.of(context).push(
                         MaterialPageRoute(builder: (context)=>HelloList())
                      );
                    })),
          ],
        ));
  }
}
