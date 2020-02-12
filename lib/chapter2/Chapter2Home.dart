import 'package:flutter/material.dart';
import 'DrawerView.dart';
import 'BottomNavBar.dart';
import 'HelloList.dart';

class Chapter2Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('第二节 页面布局'),
            elevation: 0, //bar底部阴影区域
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  debugPrint('右边查询按钮事件');
                },
                tooltip: 'searchBtn', //弹出tooltip提示
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.deepPurple,//没选中的默认颜色
              indicatorColor: Colors.deepOrangeAccent,//选中线
              indicatorSize: TabBarIndicatorSize.tab,//选中线的长度
              indicatorWeight: 5,//选中线的高度
              indicatorPadding: EdgeInsets.all(10),//选中线与bar的间距
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HelloList(),
              Icon(Icons.change_history,size: 128,color: Colors.red),
              Icon(Icons.directions_bike,size: 128,color: Colors.red),
              Icon(Icons.view_quilt,size: 128,color: Colors.red)
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
          drawer: DrawerView(), //左侧抽屉
        ));
  }
}
