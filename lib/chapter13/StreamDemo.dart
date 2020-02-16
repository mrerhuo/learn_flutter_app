import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  const StreamDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Demo'),
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  StreamDemoHome({Key key}) : super(key: key);

  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamSubscription;

  @override
  void initState() {
    super.initState();
    debugPrint('创建');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    debugPrint('startListen');
    _streamSubscription = _streamDemo.listen(onData, onError: onError, onDone: onDone);

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
                  child: Text('暂停监听'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('重置监听'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('取消监听'),
                  onPressed: _cancelStream,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
