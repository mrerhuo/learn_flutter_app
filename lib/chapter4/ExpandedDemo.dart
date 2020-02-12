import 'package:flutter/material.dart';
import 'ColumnDemo.dart';
class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start, //平铺界面
      children: <Widget>[
        Expanded(flex: 1, child: IconBadge(Icons.pool)),
        Expanded(flex: 1, child: IconBadge(Icons.beach_access)),
        Expanded(flex: 1, child: IconBadge(Icons.airplanemode_active)),
        Expanded(flex: 1, child: IconBadge(Icons.airline_seat_individual_suite)),
        Expanded(flex: 1, child: IconBadge(Icons.airline_seat_legroom_reduced))
      ],
    );
  }
}