import 'package:flutter/material.dart';
import '../model/Article.dart';
import 'Details.dart';

class ListInfo extends StatelessWidget {
  Widget listItemBuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        //堆叠小部件
        child: Stack(children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.circular(20.0),
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
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.red.withOpacity(0.3),
              highlightColor: Colors.red.withOpacity(0.1),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details(article: articles[index])));
              },
            ),
          ))
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('第七节 路由传参'),
        ),
        body: ListView.builder(
          itemBuilder: listItemBuilder,
          itemCount: articles.length,
        ));
  }
}
