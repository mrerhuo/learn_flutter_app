import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  final TextStyle _textStyle =
      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red);
  final String _author = '屈原';
  final String _title = '云中君';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('行内多样式-无AppBar'),
        ),
        body: Center(child: RichText(text: TextSpan(text:'$_title$_author',
        style: _textStyle,
        children: [
              TextSpan(
                text:'浴兰汤兮沐芳，华采衣兮若英；灵连蜷兮既留，烂昭昭兮未央；謇将憺兮寿宫，与日月兮齐光；龙驾兮帝服，聊翱游兮周章；灵皇皇兮既降，猋远举兮云中；览冀洲兮有余，横四海兮焉穷；思夫君兮太息，极劳心兮忡忡；',
                style: TextStyle(fontSize: 14.0, color: Colors.grey)
              )
        ]))));
  }
}
