import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle =
      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red);
  final String _author = '屈原';
  final String _title = '云中君';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('文本实例-无AppBar'),
        ),
        body: Center(
            child: Text(
                '《$_title》\n作者:$_author\n浴兰汤兮沐芳，华采衣兮若英；灵连蜷兮既留，烂昭昭兮未央；謇将憺兮寿宫，与日月兮齐光；龙驾兮帝服，聊翱游兮周章；灵皇皇兮既降，猋远举兮云中；览冀洲兮有余，横四海兮焉穷；思夫君兮太息，极劳心兮忡忡；',
                //maxLines: 3,//保留几行
                //overflow: TextOverflow.ellipsis,//缺省模式
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: _textStyle)));
  }
}
