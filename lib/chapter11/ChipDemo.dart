import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  ChipDemo({Key key}) : super(key: key);

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', 'Banana', 'Lemo', 'Orange'];
  List<String> _selects=[];
  String _actionItem='';
  String _choice='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Demo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Chip'),
            ),
            Divider(
              color: Colors.pink,
              height: 0, //距离
              thickness: 1, //粗细
            ),
            Wrap(spacing: 8, runSpacing: 8, children: <Widget>[
              Chip(
                label: Text('Chip 1'),
              ),
              Chip(
                label: Text('Chip 2'),
                backgroundColor: Colors.orangeAccent,
              ),
              Chip(
                label: Text('Chip 2'),
                avatar: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('王'),
                ),
                backgroundColor: Colors.teal,
              ),
              Chip(
                label: Text('Chip 2'),
                avatar: CircleAvatar(
                    //backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                    ),
                backgroundColor: Colors.purple,
              ),
              Chip(
                label: Text('Chip 2'),
                onDeleted: () {},
                deleteIcon: Icon(Icons.delete),
                deleteIconColor: Colors.red,
                backgroundColor: Colors.teal,
                deleteButtonTooltipMessage: '删除Chip',
              )
            ]),
            Divider(
              color: Colors.pink,
              height: 0, //距离
              thickness: 1, //粗细
              indent: 20, //前空区域
              endIndent: 0, //后空区域
            ),
             Container(
              child: Text('ChipList'),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _tags.map((tage) {
                return Chip(
                  label: Text(tage),
                  onDeleted: () => (setState(() {
                    _tags.remove(tage);
                  })),
                );
              }).toList(),
            ),
            Divider(
              color: Colors.pink,
              height: 0, //距离
              thickness: 1, //粗细
              indent: 20, //前空区域
              endIndent: 0, //后空区域
            ),
            Container(
              child: Text('当前ActionChip是：$_actionItem'),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _tags.map((tage) {
                return ActionChip(
                  label: Text(tage),
                  onPressed: (){
                    setState(() {
                      _actionItem=tage;
                    });
                  },
                );
              }).toList(),
            ),
            Container(
              child: Text('FilterChip 当前选中:${_selects.toString()}'),
            ),
            Divider(
              color: Colors.pink,
              height: 0, //距离
              thickness: 1, //粗细
              indent: 20, //前空区域
              endIndent: 0, //后空区域
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _tags.map((tage) {
                return FilterChip(
                  label: Text(tage),
                  selected: _selects.contains(tage),
                  onSelected:(value){
                    setState(() {
                      if(_selects.contains(tage)){
                        _selects.remove(tage);
                      }else{
                        _selects.add(tage);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Container(
              child: Text('ChoiceChip 当前选中:$_choice'),
            ),
            Divider(
              color: Colors.pink,
              height: 0, //距离
              thickness: 1, //粗细
              indent: 20, //前空区域
              endIndent: 0, //后空区域
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _tags.map((tage) {
                return ChoiceChip(
                  label: Text(tage),
                  selectedColor: Colors.lime,
                  selected: _choice == tage,
                  onSelected:(value){
                    setState(() {
                      _choice=tage;
                    });
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () => (setState(() {
          _tags = ['Apple', 'Banana', 'Lemo', 'Orange'];
          _selects=[];
          _choice='';
        })),
      ),
    );
  }
}
