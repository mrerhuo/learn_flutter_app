import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({Key key}) : super(key: key);

  @override
  TextFieldWidgetState createState() => TextFieldWidgetState();
}

class TextFieldWidgetState extends State<TextFieldWidget> {

  final textEditingController= TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text='admin';
    textEditingController.addListener((){
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
       child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           TextField(
             controller: textEditingController,
             decoration: InputDecoration(
               icon: Icon(Icons.person),//输入框图标
               labelText: '用户名',
               hintText: '请输入用户名',
               //border: InputBorder.none,//无边框
               //border: OutlineInputBorder(),//边框输入框
               filled: true
             ),
            //  onChanged: (value){
            //    debugPrint('input:$value');
            //  },
             onSubmitted: (value){
               debugPrint('submit:$value');
             },
           ),
           SizedBox(
             height: 10,
           ),
           TextField(
             decoration: InputDecoration(
               icon: Icon(Icons.remove_red_eye),//输入框图标
               labelText: '密码',
               hintText: '请输入密码',
               //border: InputBorder.none,//无边框
               //border: OutlineInputBorder(),//边框输入框
               filled: true
             ),
           )
         ],
       ),
    );
  }
}