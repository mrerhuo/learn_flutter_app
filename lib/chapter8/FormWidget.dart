import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key key}) : super(key: key);

  @override
  FormWidgetState createState() => FormWidgetState();
}

class FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  String userName, password;
  bool autovalidate = false; //是否开启自动验证

  void submitForm() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      debugPrint('用户名：$userName');
      debugPrint('密码：$password');
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('正在注册...')));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validatorUserName(value) {
    if (value.isEmpty) {
      return '请输入用户名';
    }
    return null;
  }

  String validatorPassword(value) {
    if (value.isEmpty) {
      return '请输入密码';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _formKey, //重点关联
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: '用户名', helperText: ''),
                  onSaved: (value) {
                    userName = value;
                  },
                  validator: validatorUserName, //表单验证
                  autovalidate: autovalidate, //自动验证
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: '密 码', helperText: ''),
                  onSaved: (value) {
                    password = value;
                  },
                  validator: validatorPassword, //表单验证
                  autovalidate: autovalidate, //自动验证
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text('注册', style: TextStyle(color: Colors.white)),
                      elevation: 10.0,
                      onPressed: submitForm),
                )
              ],
            )));
  }
}
