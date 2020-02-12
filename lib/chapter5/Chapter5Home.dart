import 'package:flutter/material.dart';
import 'DrawerView.dart';
import 'NavBottomBar.dart';
import 'PageView1.dart';
import 'PageView2.dart';
import 'PageView3.dart';
import 'GridView1.dart';
import 'GridView2.dart';
import 'GridView3.dart';

class Chapter5Home extends StatefulWidget {
  Chapter5Home({Key key}) : super(key: key);
  @override
  _Chapter5HomeState createState() => _Chapter5HomeState();
}

class _Chapter5HomeState extends State<Chapter5Home>
    with SingleTickerProviderStateMixin {
  //定义底部导航项目
  final List<Tab> _tabList = <Tab>[
    Tab(icon: Icon(Icons.local_florist)),
    Tab(icon: Icon(Icons.change_history)),
    Tab(icon: Icon(Icons.directions_bike)),
    Tab(icon: Icon(Icons.directions_car)),
    Tab(icon: Icon(Icons.delete_outline)),
    Tab(icon: Icon(Icons.color_lens))
  ];

  String title = "第五节-PageView()";
  _selectAppBar(index) {
    setState(() {
      switch (index) {
        case 0:
          //更新的时候需要加这个，不然界面不刷新
          title = "第五节-PageView";
          break;
        case 1:
          title = "第五节-PageView.builder";
          break;
        case 2:
          title = "第五节-PageView.extent";
          break;
        case 3:
          title = "第五节-GridView";
          break;
        case 4:
          title = "第五节-GridView.builder";
          break;
        case 5:
          title = "第五节-GridView.extent";

          break;
      }
    });
  }

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    this._tabController =
        new TabController(length: _tabList.length, vsync: this);
    this._tabController.addListener(() {
      int index = _tabController.index;

      this._selectAppBar(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabList.length,
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
            child: NavBottomBar(tabController: _tabController,currentIndex: 0,callBack: (value)=>_selectAppBar(value)),
          ),
          drawer: DrawerView(),
          body: TabBarView(controller: _tabController, children: <Widget>[
            PageView1(),
            PageView2(),
            PageView3(),
            GridView1(),
            GridView2(),
            GridView3()
          ]),
        ));
  }
}
