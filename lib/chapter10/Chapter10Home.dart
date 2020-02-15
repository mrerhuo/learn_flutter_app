import 'package:flutter/material.dart';
import 'ChapterList.dart';

class Chapter10Home extends StatefulWidget {
  Chapter10Home({Key key}) : super(key: key);
  @override
  _Chapter10HomeState createState() => _Chapter10HomeState();
}

class _Chapter10HomeState extends State<Chapter10Home> {
  final bottomSheetKey = GlobalKey<ScaffoldState>();
  //底部对话框
  _openBottmSheet() {
    //widget.callBack();
    bottomSheetKey.currentState.showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_filled),
              SizedBox(width: 16.0,),
              Text('01:30/06:30'),
              Expanded(
                child: Text('Fix you - Coldplay',textAlign: TextAlign.right,),
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: bottomSheetKey,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('第十节 弹出框')),
        body: ChapterList(callBack: _openBottmSheet));
  }
}
