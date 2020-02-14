import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxValue = false;
  bool _checkboxValue2 = false;
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
                Checkbox(
                  value: _checkboxValue,
                  activeColor: Colors.indigo,//选中颜色
                  onChanged: (bool value) {
                    setState(() {
                      _checkboxValue = value;
                      debugPrint("当前值：$_checkboxValue");
                    });
                  },
                )
              ],
            ),
            CheckboxListTile(
              //不能放在Row里面
              onChanged: (bool value) {
                setState(() {
                  _checkboxValue2 = value;
                  debugPrint("当前值：$_checkboxValue2");
                });
              },
              value: _checkboxValue2,
              title: Text(
                'CheckBox Item A',
                style: TextStyle(color: Colors.green),
              ),
              subtitle: Text('Description'),
              secondary: Icon(
                Icons.bookmark,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
