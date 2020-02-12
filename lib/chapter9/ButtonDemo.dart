import 'package:flutter/material.dart';

class ButtonDemo extends StatefulWidget {
  ButtonDemo({Key key}) : super(key: key);

  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              //实例1
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.red, //水波纹颜色
                  textColor: Colors.blue,
                ),
                FlatButton.icon(
                  //带图标
                  icon: Icon(Icons.add),
                  label: Text('Add'),
                  onPressed: () {},
                  splashColor: Colors.red, //水波纹颜色
                  textColor: Colors.blue,
                )
              ],
            ),
            Row(
              //实例2
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                      buttonColor: Theme.of(context).primaryColorLight,
                      buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary, shape: StadiumBorder())),
                  child: RaisedButton(
                    child: Text('Button'),
                    onPressed: () {},
                    //splashColor: Colors.grey, //水波纹颜色
                  ),
                ),
                SizedBox(width: 16.0),
                RaisedButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.grey, //水波纹颜色
                  textColor: Colors.white,
                  color: Colors.blue,
                ),
                SizedBox(width: 16.0),
                RaisedButton.icon(
                  //带图标
                  icon: Icon(Icons.add),
                  elevation: 12.0,
                  label: Text('Add'),
                  onPressed: () {},
                  splashColor: Colors.red, //水波纹颜色
                  textColor: Colors.blue,
                )
              ],
            ),
            Row(
              //实例3
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.red, //水波纹颜色
                  highlightedBorderColor: Colors.deepPurpleAccent, //高亮边框
                  highlightColor: Colors.deepOrangeAccent, //按住高亮颜色
                  textColor: Colors.blue,
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  shape: StadiumBorder(),
                ),
                SizedBox(width: 16.0),
                OutlineButton.icon(
                  //带图标
                  icon: Icon(Icons.add),
                  label: Text('Add'),
                  onPressed: () {},
                  splashColor: Colors.red, //水波纹颜色
                  textColor: Colors.blue,
                )
              ],
            ),
            Row(
              //实例4
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  child: OutlineButton(
                    child: Text('Button'),
                    onPressed: () {},
                    splashColor: Colors.red, //水波纹颜色
                    highlightedBorderColor: Colors.deepPurpleAccent, //高亮边框
                    highlightColor: Colors.deepOrangeAccent, //按住高亮颜色
                    textColor: Colors.blue,
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    shape: StadiumBorder(),
                  ),
                )
              ],
            ),
            Row(
              //实例5 Expanded
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: OutlineButton(
                    child: Text('Button'),
                    onPressed: () {},
                    splashColor: Colors.red, //水波纹颜色
                    highlightedBorderColor: Colors.deepPurpleAccent, //高亮边框
                    highlightColor: Colors.deepOrangeAccent, //按住高亮颜色
                    textColor: Colors.blue,
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    shape: StadiumBorder(),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  flex: 2,
                  child: OutlineButton(
                    child: Text('Button'),
                    onPressed: () {},
                    splashColor: Colors.red, //水波纹颜色
                    highlightedBorderColor: Colors.deepPurpleAccent, //高亮边框
                    highlightColor: Colors.deepOrangeAccent, //按住高亮颜色
                    textColor: Colors.blue,
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    shape: StadiumBorder(),
                  ),
                )
              ],
            ),
            Row(
              //实例6 ButtonBar
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 40.0)//设置按钮间距
                    )
                  ),
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton(
                        child: Text('Button1'),
                        onPressed: () {},
                        splashColor: Colors.red, //水波纹颜色
                        highlightedBorderColor: Colors.deepPurpleAccent, //高亮边框
                        highlightColor: Colors.deepOrangeAccent, //按住高亮颜色
                        textColor: Colors.blue,
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        shape: StadiumBorder(),
                      ),
                      OutlineButton(
                        child: Text('Button2'),
                        onPressed: () {},
                        splashColor: Colors.red, //水波纹颜色
                        highlightedBorderColor: Colors.deepPurpleAccent, //高亮边框
                        highlightColor: Colors.deepOrangeAccent, //按住高亮颜色
                        textColor: Colors.blue,
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        shape: StadiumBorder(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
