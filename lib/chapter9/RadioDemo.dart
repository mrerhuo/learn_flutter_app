import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _rvalue = 0;
  _handRadioValues(int value) {
    setState(() {
      _rvalue = value;
      debugPrint('当前值：$_rvalue');
    });
  }

  int _rvalue2 = 0;
  _handRadioValues2(int value) {
    setState(() {
      _rvalue2 = value;
      debugPrint('当前值：$_rvalue2');
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
                Radio(onChanged: _handRadioValues, value: 2, groupValue: _rvalue, activeColor: Colors.yellow),
                Radio(onChanged: _handRadioValues, value: 1, groupValue: _rvalue, activeColor: Colors.black26),
                Radio(onChanged: _handRadioValues, value: 0, groupValue: _rvalue, activeColor: Colors.lightGreen),
              ],
            ),
            Text('当前值：$_rvalue2'),
            RadioListTile(
              value: 0,
              groupValue: _rvalue2,
              onChanged: _handRadioValues2,
              title: Text('Options A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              selected: _rvalue2==0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _rvalue2,
              onChanged: _handRadioValues2,
              title: Text('Options B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _rvalue2==1,
            ),
            RadioListTile(
              value: 2,
              groupValue: _rvalue2,
              onChanged: _handRadioValues2,
              title: Text('Options C'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_3),//设置图标
              selected: _rvalue2==2,//控制图标选中状态
            )
          ],
        ),
      ),
    );
  }
}
