import 'package:flutter/material.dart';

class GridView3 extends StatelessWidget {
  const GridView3({Key key}) : super(key: key);

   List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text('Item $index',
              style: TextStyle(fontSize: 18, color: Colors.black)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        //extent需要设置显示区域大小
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        //scrollDirection: Axis.horizontal,
        maxCrossAxisExtent: 80,
        children: _buildTiles(100));
  }
}