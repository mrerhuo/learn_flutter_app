import 'package:flutter/material.dart';

class Chapter17Home extends StatefulWidget {
  Chapter17Home({Key key}) : super(key: key);
  @override
  _Chapter17HomeState createState() => _Chapter17HomeState();
}

class _Chapter17HomeState extends State<Chapter17Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //键盘
        appBar: AppBar(
          title: Text('第十七节 动画实例'),
          centerTitle: true,
        ),
        body: AnimationDemo());
  }
}

class AnimationDemo extends StatefulWidget {
  AnimationDemo({Key key}) : super(key: key);

  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

//TickerProviderStateMixin 最小贞
class _AnimationDemoState extends State<AnimationDemo> with TickerProviderStateMixin {
  //动画控制器
  AnimationController _action;
  //补间动画
  Animation _animation;
  //动画颜色
  Animation _animationColor;
  //动画效果
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    //创建动画
    _action = AnimationController(
      duration: Duration(milliseconds: 3000),
      // value: 32.0,//设置了Animation 则不设置Value
      // lowerBound: 32.0,//设置了Animation 则不设置lowerBound
      // upperBound: 100.0,//设置了Animation 则不设置upperBound
      vsync: this,
    );
    //动画效果曲线效果
    _curvedAnimation = CurvedAnimation(parent: _action, curve: Curves.bounceOut);

    //补间动画时间
    _animation = Tween(begin: 32.0, end: 100.0).animate(_curvedAnimation);
    //补间动画颜色改变
    _animationColor = ColorTween(begin: Colors.red, end: Colors.red[100]).animate(_curvedAnimation);

    //监听动画执行值
    _action.addListener(() {
      //print('actionValue:${_action.value}');
      setState(() {});
    });
    //当运行reverse()时，_action.value==lowerBound时候AnimationStatus为dismissed
    //监听动画状态forward 向前动画
    _action.addStatusListener((AnimationStatus status) {
      print('status:$status');
      // if(status== AnimationStatus.completed){
      //   _action.reverse();
      // }else if(status== AnimationStatus.dismissed){
      //   _action.forward();
      // }
    });
    //_action.forward();//开始动画，从无到有 reverse() 反向开始动画，从有到无
  }

  @override
  void dispose() {
    super.dispose();
    _action.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ActionChip(
                label: Text('${_animation.value}'),
                onPressed: () {
                  _action.forward();
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedHeart(
                actions: [_animation, _animationColor],
                controller: _action,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RotationTransition(turns: _animation, child: FlutterLogo(size: 100.0))
            ],
          )
        ],
      ),
    );
  }
}

//动画小部件
class AnimatedHeart extends AnimatedWidget {
  final List actions;
  final AnimationController controller;

  AnimatedHeart({this.actions, this.controller}) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: actions[0].value,
      color: actions[1].value,
      onPressed: () {
        //_action.forward();
        switch (controller.status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:
            controller.forward();
            break;
        }
      },
    );
  }
}
