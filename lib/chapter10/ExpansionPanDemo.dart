import 'package:flutter/material.dart';

class ExpansionPanDemo extends StatefulWidget {
  ExpansionPanDemo({Key key}) : super(key: key);

  @override
  _ExpansionPanDemoState createState() => _ExpansionPanDemoState();
}

class _ExpansionPanDemoState extends State<ExpansionPanDemo> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) => (setState((){_isExpanded=!isExpanded;})),
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) => (Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Panel A',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      )),
                  body: Container(
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(16),
                      child: Text('Panel A Content'),
                    ),
                  ),
                  isExpanded: _isExpanded)
            ],
          ),
        ],
      )),
    );
  }
}
