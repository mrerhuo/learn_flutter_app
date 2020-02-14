import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key key}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime selectDate = DateTime.now();

  _handPick() async {
    final DateTime date = await showDatePicker(
        context: context, initialDate: selectDate, firstDate: DateTime(1900), lastDate: DateTime(2200));
    if (date == null) {
      return;
    } else {
      setState(() {
        selectDate = date;
      });
    }
  }

  TimeOfDay selectTime = TimeOfDay(hour: 8, minute: 30);
  //Future<String> 异步编程错误返回信息
  Future<String> _handTime() async {
    final TimeOfDay date = await showTimePicker(context: context, initialTime: selectTime);
    if (date == null) {
      return "";
    } else {
      setState(() {
        selectTime = date;
      });
    }
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
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text('选择日期：${DateFormat.yMd().format(selectDate)}'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: _handPick,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    children: <Widget>[Text('选择时间：${selectTime.format(context)}'), Icon(Icons.arrow_drop_down)],
                  ),
                  onTap: _handTime,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
