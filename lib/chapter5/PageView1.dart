import 'package:flutter/material.dart';

class PageView1 extends StatelessWidget {
  const PageView1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      //pageSnapping: false,//无翻页效果
      //reverse: true,//倒序，第一个变最后，第最后边第一
      //scrollDirection: Axis.vertical,//设置水平滚动、垂直滚动，默认水平滚动
      onPageChanged: (currentPage){//获取当前页面索引号
        debugPrint('Page:$currentPage');
      },
      controller: PageController(
        initialPage:1,//默认打开哪页
        keepPage:false,//不记住用户当前选中
        //viewportFraction: 0.85//显示占屏幕比例
      ),
      children: <Widget>[
        Container(
            color: Colors.brown[300],
            alignment: Alignment.center,
            child: Text('ONE',
                style: TextStyle(fontSize: 32.0, color: Colors.white))),
        Container(
            color: Colors.green[300],
            alignment: Alignment.center,
            child: Text('TWO',
                style: TextStyle(fontSize: 32.0, color: Colors.white))),
        Container(
            color: Colors.blueGrey[300],
            alignment: Alignment.center,
            child: Text('THREE',
                style: TextStyle(fontSize: 32.0, color: Colors.white))),
      ],
    );
  }
}
