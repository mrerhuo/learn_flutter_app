import 'package:flutter/material.dart';
import '../model/Article.dart';

class SilverListDemo extends StatefulWidget {
  SilverListDemo({Key key}) : super(key: key);

  @override
  _SilverListState createState() => _SilverListState();
}

class _SilverListState extends State<SilverListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //工具栏
          SliverAppBar(
            pinned: true, //固定头部
            floating: true, //
            expandedHeight: 178.0, //扩展空间
            //title: Text('SliverList'),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'SliverList Demo',
                style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 3.0, //子间距
                    fontWeight: FontWeight.w400),
              ),
              background: Image.network(
                  'https://resources.ninghao.org/images/contained.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          //设置显示安全区
          SliverSafeArea(
              //外边距
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListWidget(),
          ))
        ],
      ),
    );
  }
}

class SliverListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 10,
              shadowColor: Colors.redAccent.withOpacity(0.8),
              child: Stack(children: <Widget>[
                AspectRatio(
                  child: Image.network(articles[index].imageUrl,
                      fit: BoxFit.cover),
                  aspectRatio: 16 / 9,
                ),
                Positioned(
                  top: 32.0,
                  left: 32.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(articles[index].title,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        Text(articles[index].author,
                            style: TextStyle(fontSize: 13, color: Colors.white))
                      ]),
                )
              ])),
        );
      }, childCount: articles.length),
    );
  }
}
