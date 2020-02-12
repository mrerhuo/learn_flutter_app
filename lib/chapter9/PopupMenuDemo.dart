import 'package:flutter/material.dart';

class PopupMenuDemo extends StatefulWidget {
  PopupMenuDemo({Key key}) : super(key: key);

  @override
  _PopupMenuDemoState createState() => _PopupMenuDemoState();
}

class _PopupMenuDemoState extends State<PopupMenuDemo> {
  String _titele="Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹出菜单'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_titele),
                PopupMenuButton(
                    onSelected: (value) {
                      debugPrint(value);
                      setState(() {
                        _titele=value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Text('Home'),
                            value: 'Home',
                          ),
                          PopupMenuItem(
                            child: Text('About'),
                            value: 'About',
                          ),
                          PopupMenuItem(
                            child: Text('Discover'),
                            value: 'Discover',
                          )
                        ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
