import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  SliderDemo({Key key}) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _values = 0.0;
  _handSliderValue(double value) {
    setState(() {
      _values = value;
      debugPrint('当前值：$_values');
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
                Slider(
                  value: _values,
                  onChanged: _handSliderValue,
                  max: 10,
                  min: 0,
                  divisions: 10,
                  label: '${_values.toInt()}',
                ),
              ],
            ),
            Text('当前值${_values.toInt()}')//显示当前值toInt转为整数
          ],
        ),
      ),
    );
  }
}
