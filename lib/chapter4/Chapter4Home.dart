import 'package:flutter/material.dart';
import 'ColumnDemo.dart';
import 'RowDemo.dart';
import 'DrawerView.dart';
import 'ExpandedDemo.dart';
import 'SizedBoxDemo.dart';
import 'AspectRatioDemo.dart';

class Chapter4Home extends StatefulWidget {
  Chapter4Home({Key key}) : super(key: key);
  @override
  _Chapter4HomeState createState() => _Chapter4HomeState();
}

class _Chapter4HomeState extends State<Chapter4Home> {
  String title = "第四节-Column布局";

  _selectAppBar(index) {
    switch (index) {
      case 0:
        setState(() {
          //更新的时候需要加这个，不然界面不刷新
          title = "第四节-Column布局";
        });
        break;
      case 1:
        setState(() {
          title = "第四节-Row布局";
        });
        break;
      case 2:
        setState(() {
          title = "第四节-Expanded布局";
        });
        break;
      case 3:
        setState(() {
          title = "第四节-SizedBox布局";
        });
        break;
         case 3:
        setState(() {
          title = "第四节-比例容器AspectRatio";
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(title),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  debugPrint('右边查询按钮事件');
                },
                tooltip: 'searchBtn', //弹出tooltip提示
              )
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.blue,
            child: TabBar(
              unselectedLabelColor: Colors.deepPurple, //没选中的默认颜色
              indicatorColor: Colors.blue, //选中线
              indicatorSize: TabBarIndicatorSize.tab, //选中线的长度
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.delete_outline))
              ],
              onTap: _selectAppBar,
            ),
          ),
          drawer: DrawerView(),
          body: TabBarView(children: <Widget>[
            ColumnDemo(),
            RowDemo(),
            ExpandedDemo(),
            SizedBoxDemo(),
            AspectRatioDemo()
          ]),
        ));
  }
}
