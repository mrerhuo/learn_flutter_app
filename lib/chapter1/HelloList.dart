import 'package:flutter/material.dart';
import '../model/Article.dart';

class HelloList extends StatelessWidget {
  Widget listItemBuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Material(
                  elevation: 10,
                  clipBehavior: Clip.antiAlias,//圆角需加这个
                  borderRadius: BorderRadius.circular(20.0),//圆角角度
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      articles[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(articles[index].title,
                    style: Theme.of(context).textTheme.title,
                    textAlign: TextAlign.left),
                Text(articles[index].author,
                    style: Theme.of(context).textTheme.subtitle,
                    textAlign: TextAlign.left),
                SizedBox(height: 16.0),
              ]),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('第一节 Hello List'),
        ),
        body: ListView.builder(
          itemBuilder: listItemBuilder,
          itemCount: articles.length,
        ));
  }
}
