import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_app/chapter19/Chapter19Home.dart';
void main() {
  test('测试两个字符串是否相等',(){
    var string =TestFun.greet('你好');
    expect(string,'hello 你好');//验证两个值是否相等
  });

  testWidgets('测试部件',(WidgetTester tester)async{
    await tester.pumpWidget(
      MaterialApp(//必须加
        home: Scaffold(//必须加
          body: TestDemoWidget(),
        ),
      )
    );
    //查找是否有hello文本小部件
    final labelText=find.text('Hello');
    //findsOneWidget 找一个小部件
    //expect(labelText,findsOneWidget);
    //找是否有1个这样的小部件,如果大于所找的数量则报错。
    expect(labelText,findsNWidgets(2));
    //找到控件为0的文本
    final actionChipeLabelText=find.text('0');
    //并且判断是否是唯一的一个
    expect(actionChipeLabelText,findsOneWidget);
    //找到类型是ActionChip的小部件
    final actionChip=find.byType(ActionChip);
    //按下该小部件
    await tester.tap(actionChip);
    //重建小部件
    await tester.pump();

    final actionChipeLabelTextAfterTap=find.text('1');
    //验证找到文本为1的小部件
    expect(actionChipeLabelTextAfterTap,findsOneWidget);
    //测试不存在为0的小部件
    expect(actionChipeLabelText,findsNothing);
  });
}