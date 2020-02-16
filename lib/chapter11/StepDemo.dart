import 'package:flutter/material.dart';

class StepDemo extends StatefulWidget {
  StepDemo({Key key}) : super(key: key);

  @override
  _StepDemoState createState() => _StepDemoState();
}

class _StepDemoState extends State<StepDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 步骤widget插件'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepTapped: (value) {
          setState(() {
            _currentStep = value;
          });
        },
        onStepContinue: () {
          setState(() {
            _currentStep < 3 ? _currentStep += 1 : _currentStep = 0;
          });
        },
        onStepCancel: () {
           setState(() {
            _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
          });
        },
        steps: [
          Step(title: Text('第一步'), subtitle: Text('这是登录'), content: Text('当前步骤为登录'), isActive: _currentStep == 0),
          Step(title: Text('第二步'), subtitle: Text('这是登录'), content: Text('当前步骤为登录'), isActive: _currentStep == 1),
          Step(title: Text('第三步'), subtitle: Text('这是登录'), content: Text('当前步骤为登录'), isActive: _currentStep == 2),
          Step(title: Text('第四步'), subtitle: Text('这是登录'), content: Text('当前步骤为登录'), isActive: _currentStep == 3),
        ],
      ),
    );
  }
}
