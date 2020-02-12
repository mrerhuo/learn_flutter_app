import 'package:flutter/material.dart';
import 'ColumnDemo.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //cross交叉轴
      //crossAxisAlignment: CrossAxisAlignment.center,//横排居中对齐
      //crossAxisAlignment: CrossAxisAlignment.end,//横排底部对齐
      crossAxisAlignment: CrossAxisAlignment.start,//横排顶部对齐
      //crossAxisAlignment: CrossAxisAlignment.stretch,//横排拉伸屏幕
      //mainAxis 主轴：中间轴
      //mainAxisAlignment: MainAxisAlignment.start, //起始
      //mainAxisAlignment: MainAxisAlignment.center,//居中
      //mainAxisAlignment: MainAxisAlignment.end,//底部
      //mainAxisAlignment: MainAxisAlignment.spaceAround,//平铺分散居中
      //mainAxisAlignment: MainAxisAlignment.spaceBetween, //平铺分散两端
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//平铺分散靠中间的分散
      children: <Widget>[
        IconBadge(Icons.pool),
        IconBadge(Icons.beach_access,size: 90),
        IconBadge(Icons.airplanemode_active),
      ],
    );
  }
}
