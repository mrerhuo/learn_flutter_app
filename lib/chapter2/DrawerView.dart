import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      UserAccountsDrawerHeader(//用户信息区域
          accountName: Text('erxiansheng'),
          accountEmail: Text('silence_ailong@qq.com'),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resources.ninghao.org/images/wanghao.jpg')),
          decoration: BoxDecoration(
              color: Colors.yellowAccent[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellowAccent[400].withOpacity(0.6),
                      BlendMode.hardLight)))),
      ListTile(
        leading: (Icon(Icons.message, color: Colors.black12, size: 22.0)),
        title: Text('信息', textAlign: TextAlign.start),
        onTap: () => Navigator.pop(context), //关闭抽屉
      ),
      ListTile(
        title: Text('收藏', textAlign: TextAlign.right),
        trailing: (Icon(Icons.favorite, color: Colors.black12, size: 22.0)),
      ),
      ListTile(
        title: Text('设置', textAlign: TextAlign.right),
        trailing: (Icon(Icons.settings, color: Colors.black12, size: 22.0)),
      ),
      ListTile(
        title: Text('手动关闭抽屉', textAlign: TextAlign.right),
        trailing: (Icon(Icons.arrow_left, color: Colors.black12, size: 22.0)),
        onTap: () => Navigator.pop(context), //关闭抽屉
      ),
    ]));
  }
}
