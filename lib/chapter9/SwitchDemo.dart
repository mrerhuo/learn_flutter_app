import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key key}) : super(key: key);

  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _svalue = false;
  _handSwitchValue(bool value) {
    setState(() {
      _svalue = value;
      debugPrint('当前值：$_svalue');
    });
  }

  bool _svalueA = false;
  _handSwitchAValue(bool value) {
    setState(() {
      _svalueA = value;
      debugPrint('当前值：$_svalue');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _svalue ? '😔' : '😊',
                  style: TextStyle(fontSize: 32),
                ),
                Switch(
                  onChanged: _handSwitchValue,
                  value: _svalue,
                )
              ],
            ),
            SwitchListTile(
              onChanged: _handSwitchAValue,
              value: _svalueA,
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary: Icon(_svalueA?Icons.visibility:Icons.visibility_off),
              selected: _svalueA,
              activeColor: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
