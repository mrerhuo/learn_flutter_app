import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String panelTitle;
  final Widget panelBody;
  bool isExpanded;
  ExpansionPanelItem({this.panelTitle, this.panelBody, this.isExpanded});
}

class ExpansionPanListDemo extends StatefulWidget {
  ExpansionPanListDemo({Key key}) : super(key: key);

  @override
  _ExpansionPanListDemoState createState() => _ExpansionPanListDemoState();
}

class _ExpansionPanListDemoState extends State<ExpansionPanListDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;
  @override
  void initState() {
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
          panelTitle: 'Panl A',
          panelBody: Container(
            padding: EdgeInsets.all(16.0),
            child: Text('Content A'),
          ),
          isExpanded: false),
      ExpansionPanelItem(
          panelTitle: 'Panl B',
          panelBody: Container(
            padding: EdgeInsets.all(16.0),
            child: Text('Content B'),
          ),
          isExpanded: false),
      ExpansionPanelItem(
          panelTitle: 'Panl C',
          panelBody: Container(
            padding: EdgeInsets.all(16.0),
            child: Text('Content C'),
          ),
          isExpanded: false)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) => (setState(() {
                _expansionPanelItems[panelIndex].isExpanded=!isExpanded;
              })),
              children: _expansionPanelItems.map((ExpansionPanelItem item) {
                return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.panelBody,
                    headerBuilder: (context, isExpanded) => (Container(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            item.panelTitle,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        )));
              }).toList(),//map记得加toList
            )
          ],
        ),
      ),
    );
  }
}
