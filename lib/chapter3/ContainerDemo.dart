import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('容器实例-无AppBar'),
        ),
        body: Container(
          //color:Colors.green[100],使用颜色不能使用decoration
          decoration: BoxDecoration(
            image:DecorationImage(
              image:NetworkImage('https://resources.ninghao.org/images/dragon.jpg'),
              fit: BoxFit.cover,//图像布局
              alignment: Alignment.topCenter,//布局
              colorFilter:ColorFilter.mode(Colors.indigo[300], BlendMode.hardLight)//滤镜
            )
          ),
          child: Center(
            child: Container(
              //color: Colors.blue,设置颜色会和decoration冲突
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(9),
              width: 90,
              height: 90,
              child: Icon(Icons.pool, size: 36, color: Colors.white),
              decoration: BoxDecoration(//使用时，不需要设置Container的color
                color:Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                  color:Colors.indigoAccent[100],
                  width:3.0,
                  style:BorderStyle.solid
                ),
                //borderRadius: BorderRadius.circular(20),使用shape变形时，需要注释掉
                boxShadow: [
                  BoxShadow(
                    offset:Offset(6.0,7.0),//偏移方向
                    color:Color.fromRGBO(16, 20, 188, 1),//阴影颜色
                    blurRadius: 30,//模糊程度
                    spreadRadius: -3//阴影大小
                  )
                ],
                shape: BoxShape.circle,//shape变形时，需要注释掉borderRadius
                // gradient: RadialGradient(//镜像渐变效果
                //   colors:[
                //     Color.fromRGBO(7, 102, 255, 1),
                //     Color.fromRGBO(3, 28, 128, 1),
                //   ]
                // ),
                gradient: LinearGradient(//线性渐变
                  colors:[
                    Color.fromRGBO(7, 102, 255, 1),
                    Color.fromRGBO(3, 28, 128, 1),
                  ],
                  begin: Alignment.topCenter,
                  end:Alignment.bottomCenter
                ),
              ),
              ),
          ),
        ));
  }
}