import 'package:flutter/material.dart';
import '../model/Article.dart';

class SliverGridDemo extends StatefulWidget {
  SliverGridDemo({Key key}) : super(key: key);

  @override
  _SliverGridDemoState createState() => _SliverGridDemoState();
}

class _SliverGridDemoState extends State<SliverGridDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SliverGrid 实例')),
        body: CustomScrollView(
          slivers: <Widget>[
            //设置显示安全区
            SliverSafeArea(
                //外边距
                sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridWidget(),
            ))
          ],
        ));
  }
}

class SliverGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //一行几个
          crossAxisSpacing: 8.0, //左右间距
          mainAxisSpacing: 8.0, //上下间距
          childAspectRatio: 1 //拉伸或压缩大于1压缩，小于1大于0拉伸
          ),
      delegate: SliverChildBuilderDelegate((BuildContext c, int index) {
        return Container(
            child: Image.network(articles[index].imageUrl, fit: BoxFit.cover));
      }, childCount: articles.length),
    );
  }
}
