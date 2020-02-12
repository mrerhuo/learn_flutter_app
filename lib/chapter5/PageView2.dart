import 'package:flutter/material.dart';
import '../model/Article.dart';

class PageView2 extends StatelessWidget {
  const PageView2({Key key}) : super(key: key);
  
  Widget _itemBuilder(BuildContext context, int index) {
    return Stack(children: <Widget>[
      SizedBox.expand(
          child: Image.network(articles[index].imageUrl, fit: BoxFit.cover)),
      Positioned(
        bottom: 8.0,
        left: 8.0,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(articles[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(articles[index].author)
            ]),
      )
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: articles.length,
      itemBuilder: _itemBuilder,
    );
  }
}
