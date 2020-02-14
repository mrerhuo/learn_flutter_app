import 'package:flutter/material.dart';
import 'FloatActionButtonDemo.dart';
import 'FloatActionButtonTextDemo.dart';
import 'ButtonDemo.dart';
import 'PopupMenuDemo.dart';
import 'CheckBoxDemo.dart';
import 'RadioDemo.dart';
import 'SwitchDemo.dart';
import 'SliderDemo.dart';
import 'DatePickerDemo.dart';

class DemoList extends StatefulWidget {
  DemoList({Key key}) : super(key: key);

  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(title: 'FloatActionButton(浮动按钮)-无文字',page: FloatActionButtonDemo()),
        ListItem(title: 'FloatActionButton(浮动按钮)-有文字',page: FloatActionButtonTextDemo()),
        ListItem(title: 'Button 实例',page: ButtonDemo()),
        ListItem(title: 'PopupMenu 弹出菜单实例',page: PopupMenuDemo()),
        ListItem(title: 'CheckBox 复选框实例',page: CheckBoxDemo()),
        ListItem(title: 'Radio 单选框实例',page: RadioDemo()),
        ListItem(title: 'Switch 开关实例',page: SwitchDemo()),
        ListItem(title: 'Slider 滑动选择实例',page: SliderDemo()),
        ListItem(title: 'DatePicker 选择日期实例',page: DatePickerDemo())
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key key,this.title,this.page}) : super(key: key);
  final String title;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder:(context)=>page)
        );
      },
    );
  }
}