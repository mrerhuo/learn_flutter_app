import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({Key key}) : super(key: key);

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
        Stack(//可叠加小部件
          alignment: Alignment.topLeft,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 300,
              child: Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  //borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 54, 255, 1.0)
                  ])
                ),
                child: Icon(Icons.brightness_3, color: Colors.white, size: 32),
              ),
            ),
            Positioned(
              right: 30,
              top: 15,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32)),
              Positioned(
              right: 60,
              top: 65,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 18)),
                            Positioned(
              right: 90,
              top: 95,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 18)),
          ],
        )
      ],
    );
  }
}
