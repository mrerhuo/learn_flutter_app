import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //cross交叉轴
      //crossAxisAlignment: CrossAxisAlignment.center,//竖排居中对齐
      //crossAxisAlignment: CrossAxisAlignment.end, //竖排左对齐
      //crossAxisAlignment: CrossAxisAlignment.start,//竖排右对齐
      //crossAxisAlignment: CrossAxisAlignment.stretch,//竖排拉伸屏幕
      //mainAxis 主轴：中间轴
      //mainAxisAlignment: MainAxisAlignment.start, //起始
      mainAxisAlignment: MainAxisAlignment.center, //居中
      //mainAxisAlignment: MainAxisAlignment.end,//底部
      //mainAxisAlignment: MainAxisAlignment.spaceAround,//平铺分散居中
      //mainAxisAlignment: MainAxisAlignment.spaceBetween, //平铺分散两端
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,//平铺分散靠中间的分散
      children: <Widget>[
        // AspectRatio(
        //   //比例部件
        //   aspectRatio: 1 / 1,
        //   child: Container(color: Colors.blue),
        // ),
        ConstrainedBox(
          constraints: BoxConstraints(//约束宽高
            minHeight: 200.0,
            //maxWidth: 200.0,
          ),
          child: Container(color: Colors.yellowAccent),
        )
      ],
    );
  }
}
