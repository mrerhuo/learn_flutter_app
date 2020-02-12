import 'package:flutter/material.dart';
import 'HomeList.dart';
import 'FirestPage.dart';

class CusAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('MyApp'),
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  debugPrint('fffd');
                },
                tooltip: 'searchBtn',
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black38,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt))
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            HomeList(),
            FirestPage(),
          ]),
        ));
  }
}