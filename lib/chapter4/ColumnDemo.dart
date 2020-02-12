import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //cross交叉轴
      //crossAxisAlignment: CrossAxisAlignment.center,//竖排居中对齐
      crossAxisAlignment: CrossAxisAlignment.end,//竖排左对齐
      //crossAxisAlignment: CrossAxisAlignment.start,//竖排右对齐
      //crossAxisAlignment: CrossAxisAlignment.stretch,//竖排拉伸屏幕
      //mainAxis 主轴：中间轴
      //mainAxisAlignment: MainAxisAlignment.start, //起始
      //mainAxisAlignment: MainAxisAlignment.center,//居中
      //mainAxisAlignment: MainAxisAlignment.end,//底部
      //mainAxisAlignment: MainAxisAlignment.spaceAround,//平铺分散居中
      mainAxisAlignment: MainAxisAlignment.spaceBetween,//平铺分散两端
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,//平铺分散靠中间的分散
      children: <Widget>[
        IconBadge(Icons.pool),
        IconBadge(Icons.beach_access,size: 90),
        IconBadge(Icons.airplanemode_active)
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 32.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
