import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'chapter1/Chapter1.dart';
import 'chapter2/Chapter2.dart';
import 'chapter3/Chapter3.dart';
import 'chapter4/Chapter4.dart';
import 'chapter5/Chapter5.dart';
import 'chapter6/Chapter6.dart';
import 'chapter7/Chapter7.dart';
import 'chapter8/Chapter8.dart';
import 'chapter9/Chapter9.dart';

class Index extends StatelessWidget {
  const Index({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('坚持学习App'),
        centerTitle: true, //title居中
        elevation: 0, //是否显示Bar阴影
      ),
      body: ChapterList(),
    );
  }
}

class ChapterList extends StatelessWidget {
  const ChapterList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, //横竖转换
      reverse: false, //倒叙(true)顺序(false)转换
      primary: false,
      children: <Widget>[
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第一课  Hello Fluter'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter1())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第二课  页面布局'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter2())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第三课 小组件'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter3())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第四课 布局'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter4())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第五课 PageView GridView'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
               Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter5())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第六课 SliveView'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
               Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter6())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第七课 路由传参'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter7())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第八课 Form表单及验证'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter8())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第九课 Button实例'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Chapter9())
              );
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十一课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十一课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十二课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十二课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十三课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十三课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十四课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十四课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十五课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十五课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十六课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十六课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十七课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十八课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第十九课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第十九课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第二十课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第二十课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('第二十一课'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('第二十一课');
            }),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('总结'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              debugPrint('总结');
            })
      ],
    );
  }
}
