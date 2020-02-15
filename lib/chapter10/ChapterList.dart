import 'package:flutter/material.dart';
import 'ExpansionPanDemo.dart';
import 'ExpansionPanListDemo.dart';

enum Option { A, B, C, D }
enum Actions { OK, Cancel }

class ChapterList extends StatefulWidget {
  final callBack;
  ChapterList({Key key, this.callBack}) : super(key: key);

  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<ChapterList> {
  String optionValue = '';
  //最简单Dialog
  _openSimpleDialog() async {
    final dialog = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('最简单Dialog'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option 1'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('Option 2'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text('Option 3'),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            ),
            SimpleDialogOption(
              child: Text('Option 4'),
              onPressed: () {
                Navigator.pop(context, Option.D);
              },
            )
          ],
        );
      },
    );
    switch (dialog) {
      case Option.A:
        setState(() {
          optionValue = 'A';
        });
        break;
      case Option.B:
        setState(() {
          optionValue = 'B';
        });
        break;
      case Option.C:
        setState(() {
          optionValue = 'C';
        });
        break;
      case Option.D:
        setState(() {
          optionValue = 'D';
        });
        break;
    }
  }

  String _choice = '';
  //提示对话框
  _openAlertDialog() async {
    final dialog = await showDialog(
      context: context,
      barrierDismissible: false, //禁止点击屏幕消失
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('提示对话框'),
          content: Text('这是一个提示对话框'),
          actions: <Widget>[
            FlatButton(
              child: Text(
                '取消',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () => (Navigator.pop(context, Actions.Cancel)),
            ),
            FlatButton(
              child: Text(
                '确认',
                style: TextStyle(color: Colors.black87),
              ),
              onPressed: () => (Navigator.pop(context, Actions.OK)),
            ),
          ],
        );
      },
    );
    switch (dialog) {
      case Actions.OK:
        setState(() {
          _choice = 'Ok';
        });
        break;
      case Actions.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
    }
  }

  //底部对话框
  _openBottmSheet() {
    widget.callBack();
  }

  String modalValue = "";
  //底部模态对话框
  _openModealBottomSheet() async {
    final dialog = await showModalBottomSheet(
      context: context,
      builder: (context) => (Container(
        height: 200,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Option A'),
              onTap: () => (Navigator.pop(context, 'A')),
            ),
            ListTile(
              title: Text('Option B'),
              onTap: () => (Navigator.pop(context, 'B')),
            ),
            ListTile(
              title: Text('Option C'),
              onTap: () => (Navigator.pop(context, 'C')),
            ),
          ],
        ),
      )),
    );
    switch (dialog) {
      case 'A':
        setState(() {
          modalValue = 'A';
        });
        break;
      case 'B':
        setState(() {
          modalValue = 'B';
        });
        break;
      case 'C':
        setState(() {
          modalValue = 'C';
        });
        break;
    }
  }

  _openSnackBar() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Processing...'),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () => {},
      ),
    ));
  }

  _openExpansionPanDemo() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExpansionPanDemo()));
  }

  _openExpansionPanListDemo() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExpansionPanListDemo()));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(title: '最简单弹出框--当前值:$optionValue', callBack: _openSimpleDialog),
        ListItem(title: '提示对话框--当前值:$_choice', callBack: _openAlertDialog),
        ListItem(title: '底部对话框(Sheet)', callBack: _openBottmSheet),
        ListItem(title: '底部对话框(ModalBottomSheet)--当前值:$modalValue', callBack: _openModealBottomSheet),
        ListItem(title: '底部SnackBar', callBack: _openSnackBar),
        ListItem(title: '收缩面板', callBack: _openExpansionPanDemo),
        ListItem(title: '收缩面板列表', callBack: _openExpansionPanListDemo),
      ],
    );
  }
}

class ListItem extends StatefulWidget {
  final String title;
  final callBack;
  ListItem({Key key, this.title, this.callBack}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      onTap: () {
        widget.callBack();
      },
    );
  }
}
