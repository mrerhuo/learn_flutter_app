import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class Chapter14Home extends StatefulWidget {
  Chapter14Home({Key key}) : super(key: key);
  @override
  _Chapter14HomeState createState() => _Chapter14HomeState();
}

class _Chapter14HomeState extends State<Chapter14Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //键盘
        appBar: AppBar(title: Text('第十四节 RxDartDemo')),
        body: RxDartDemo());
  }
}

class RxDartDemo extends StatefulWidget {
  RxDartDemo({Key key}) : super(key: key);

  @override
  _RxDartDemoState createState() => _RxDartDemoState();
}

class _RxDartDemoState extends State<RxDartDemo> {
  PublishSubject<String> _textFieldSubject;
  String _str = '';
  @override
  void initState() {
    super.initState();
    //Observable<String> _observable=Observable(Stream.fromIterable(['你好','Hello...']));
    //PublishSubject<String> _subject=PublishSubject<String>();
    //BehaviorSubject<String> _subject=BehaviorSubject<String>();
    // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);
    // _subject.add('abcde');
    // _subject.add('hola');
    // _subject.add('hi');
    // _subject.listen((data) => debugPrint('listen 1: $data'));
    // _subject.listen((data) => debugPrint('listen 2: ${data.toUpperCase()}'));
    // _subject.close();

    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject
    .map((data) {//新增一个转换
      return '/*' + data + '*/';
    })
    .where((data){//条件过滤
      return data.length>15;
    })
    .debounce((_) => TimerStream(true, Duration(milliseconds: 500)))//延迟半秒输出
    .listen((data) {
      setState(() {
        _str = data;
      });
      debugPrint('$data');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _textFieldSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextField(
            onChanged: (value) {
              _textFieldSubject.add('正在输入：$value');
            },
            onSubmitted: (value) {
              _textFieldSubject.add('提交：$value');
            },
            decoration: InputDecoration(labelText: 'Title', filled: true),
          ),
          Text('$_str')
        ],
      ),
    );
  }
}
