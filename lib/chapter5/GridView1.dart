import 'package:flutter/material.dart';

class GridView1 extends StatelessWidget {
  const GridView1({Key key}) : super(key: key);

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
    return GridView.count(
        //count需要设置一行显示几个
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        //scrollDirection: Axis.horizontal,

        children: _buildTiles(100));
  }
}
