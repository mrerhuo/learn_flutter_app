import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Chapter16Home extends StatefulWidget {
  Chapter16Home({Key key}) : super(key: key);
  @override
  _Chapter16HomeState createState() => _Chapter16HomeState();
}

class _Chapter16HomeState extends State<Chapter16Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //键盘
        appBar: AppBar(
          title: Text('第十六节 Http请求'),
          centerTitle: true,
        ),
        body: HttpDemo());
  }
}

class HttpDemo extends StatefulWidget {
  HttpDemo({Key key}) : super(key: key);

  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  final post = {'dictText': 'hello~', 'dictValue': 'nice to meet you!', 'groupCode': 'groupCode'};

  @override
  void initState() {
    super.initState();
    // debugPrint(post['dictText']);
    // debugPrint(post['dictValue']);
    // //对象转换Json
    // final postJson=json.encode(post);
    // debugPrint(postJson);
    // //Json转Map
    // final postMap=json.decode(postJson);
    // debugPrint(postMap['dictText']);
    // debugPrint(postMap['dictValue']);
    // //判断类型是否是map
    // print(postMap is Map);
    // //Json to Model数据
    // final dictModel=DictModel.fromJson(postMap);

    // debugPrint('dictValue:${dictModel.dictValue},dictText:${dictModel.dictText}');
    // //对象转json
    // final dictModelJson=json.encode(dictModel);

    // debugPrint('dictJson:$dictModelJson');
    //getDictList().then((value) => print(value));
  }

  Future<List<DictModel>> getDictList() async {
    Map httpHead = Map();
    httpHead['dd'] = 3.3;
    var response = await http.get('http://115.29.104.243:8080/hzoa/webapi/Dicts/getList');
    // debugPrint('statusCode:${response.statusCode}');
    // debugPrint('body:${response.body}');

    if (response.statusCode == 200) {
      Utf8Decoder utf8Decode= Utf8Decoder();
     // final responseBody = json.decode(response.body);
      var data =json.decode(utf8Decode.convert(response.bodyBytes));
      
      List<DictModel> list = data['model'].map<DictModel>((item) => DictModel.fromJson(item)).toList();
      //debugPrint('${responseBody['model']}');
      //print('$list');
      return list;
    } else {
      throw('请求错误！');
    }
  }
  Utf8Decoder decode= Utf8Decoder();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DictModel>>(
      future: getDictList(),
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: Text('加整数据中...'),
          );
        }else{
          return ListView(
            children: snapshot.data.map((item){
              return ListTile(
                leading: Text(item.groupCode),
                title: Text(item.dictText,textAlign: TextAlign.end,),
                subtitle: Text(item.dictValue,textAlign: TextAlign.end,),
              );
            }).toList(),
          );
        }
      },
    );
  }
}

class DictModel {
  final String dictText;
  final String dictValue;
  final String groupCode;
  DictModel(this.dictText, this.dictValue, this.groupCode);
  DictModel.fromJson(Map json)
      : dictText = json['dictText'],
        dictValue = json['dictValue'],
        groupCode = json['groupCode'];

  Map toJson() => {
        'dictText': dictText,
        'dictValue': dictValue,
        'groupCode': groupCode,
      };
}
