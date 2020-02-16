import 'dart:async';

import 'package:flutter/material.dart';

class StreamControllerDemo extends StatelessWidget {
  const StreamControllerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream StreamController'),
      ),
      body: StreamControllerDemoHome(),
    );
  }
}

class StreamControllerDemoHome extends StatefulWidget {
  StreamControllerDemoHome({Key key}) : super(key: key);

  @override
  _StreamControllerDemoHomeState createState() => _StreamControllerDemoHomeState();
}

class _StreamControllerDemoHomeState extends State<StreamControllerDemoHome> {
  StreamSubscription _streamSubscription;
  StreamController<String> _streamDemo; //新增
  StreamSink _sinkDemo;
  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    debugPrint('创建');
    _streamDemo = StreamController<String>(); //修改
    _sinkDemo = _streamDemo.sink;
    debugPrint('startListen');
    _streamSubscription = _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);

    debugPrint('结束');
  }

  //成功
  onData(String data) {
    debugPrint('$data');
  }

  //错误处理
  onError(error) {
    debugPrint('错误处理$error');
  }

  //完成处理
  onDone() {
    debugPrint('完成处理');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    //throw '这是一个异常测试';
    return 'hello~';
  }

  _pauseStream() {
    debugPrint('暂停Stream');
    _streamSubscription.pause();
  }

  _resumeStream() {
    debugPrint('重置Stream');
    _streamSubscription.resume();
  }

  _cancelStream() {
    debugPrint('取消Stream');
    _streamSubscription.cancel();
  }

  _addStream() async {
    debugPrint('新增 stream');
    String data = await fetchData();
    _streamDemo.add(data+"2222");
  }

  _addStream2() async {
    debugPrint('新增 stream');
    String data = await fetchData();
    _sinkDemo.add(data+'1111');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Stream 异步编程的一种'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('新增数据'),
                  onPressed: _addStream,
                ),
                FlatButton(
                  child: Text('暂停'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('重置'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('取消'),
                  onPressed: _cancelStream,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('新增数据Sink'),
                  onPressed: _addStream2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
