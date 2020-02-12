import 'package:flutter/material.dart';
import '../model/Article.dart';

class GridView2 extends StatelessWidget {
  const GridView2({Key key}) : super(key: key);

  Widget _buildTiles(BuildContext context, int index) {
    return Container(
        child: Image.network(articles[index].imageUrl, fit: BoxFit.cover));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: articles.length,
        itemBuilder: _buildTiles,
        gridDelegate:
            // SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 4, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0)
            SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 80,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          //childAspectRatio: 2,//这是压缩
        ));
  }
}
