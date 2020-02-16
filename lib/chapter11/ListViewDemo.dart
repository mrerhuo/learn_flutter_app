import 'package:flutter/material.dart';
import 'BottomNavBar.dart';
import '../model/Article.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({Key key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Chip Demo'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewStaticWidget(),
            ListViewDataWidget(),
            PageListViewWidget(),
            CardDemo(),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

//静态列表
class ListViewStaticWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DataTable(
          columns: [DataColumn(label: Text('Title')), DataColumn(label: Text('Author'))],
          rows: <DataRow>[
            DataRow(cells: [
              DataCell(Text('hello!')),
              DataCell(Text('mrerxiansheng!')),
            ]),
            DataRow(cells: [
              DataCell(Text('hola!')),
              DataCell(Text('mrerxiansheng!')),
            ]),
            DataRow(cells: [
              DataCell(Text('你好!')),
              DataCell(Text('mrerxiansheng!')),
            ])
          ],
        )
      ],
    );
  }
}

//动态列表
class ListViewDataWidget extends StatefulWidget {
  ListViewDataWidget({Key key}) : super(key: key);

  @override
  _ListViewDataWidgetState createState() => _ListViewDataWidgetState();
}

class _ListViewDataWidgetState extends State<ListViewDataWidget> {
  int _sortColumnIndex = 0;
  bool _sortAscending = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DataTable(
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          // onSelectAll: (value) {
          //   debugPrint('当前全选状态：${!value}');
          // },
          columns: [
            DataColumn(
              label: Text('Title'),
              onSort: (columnIndex, ascending) {
                setState(() {
                  _sortColumnIndex = columnIndex;
                  _sortAscending = ascending;

                  articles.sort((a, b) {
                    if (!ascending) {
                      final c = a;
                      a = b;
                      b = c;
                    }
                    return a.title.length.compareTo(b.title.length);
                  });
                });
              },
            ),
            DataColumn(label: Text('Author')),
            DataColumn(label: Text('Image')),
          ],
          rows: articles.map((Article item) {
            return DataRow(
                selected: item.selected, //默认选中状态
                onSelectChanged: (value) {
                  //多选方法
                  setState(() {
                    if (item.selected != value) {
                      item.selected = value;
                    }
                  });
                },
                cells: [
                  DataCell(Text(item.title)),
                  DataCell(Text(item.author)),
                  DataCell(Image.network(item.imageUrl)),
                ]);
          }).toList(),
        )
      ],
    );
  }
}

//分页列表
class ArticleDataSource extends DataTableSource {
  final List<Article> _list = articles;
  int _selectedCount = 0;
  //返回行内容
  @override
  DataRow getRow(int index) {
    final Article item = _list[index];
    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text(item.title)),
      DataCell(Text(item.author)),
      DataCell(Image.network(item.imageUrl)),
    ]);
  }

  //是否确定行数量
  @override
  bool get isRowCountApproximate => false;

  //返回行数
  @override
  int get rowCount => articles.length;
  //是否选中行的数量
  @override
  int get selectedRowCount => _selectedCount;

  void _sort(getField(item), bool ascending) {
    _list.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    //刷新表
    notifyListeners();
  }
}

class PageListViewWidget extends StatefulWidget {
  PageListViewWidget({Key key}) : super(key: key);

  @override
  _PageListViewWidgetState createState() => _PageListViewWidgetState();
}

class _PageListViewWidgetState extends State<PageListViewWidget> {
  int _sortColumnIndex = 0;
  bool _sortAscending = false;

  final ArticleDataSource _source = ArticleDataSource();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PaginatedDataTable(
          header: Text('分页列表'),
          source: _source,
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          rowsPerPage: 5,
          // onSelectAll: (value) {
          //   debugPrint('当前全选状态：${!value}');
          // },
          columns: [
            DataColumn(
              label: Text('标题'),
              onSort: (columnIndex, ascending) {
                setState(() {
                  _source._sort((item) => item.title.length, ascending);
                  _sortColumnIndex = columnIndex;
                  _sortAscending = ascending;
                });
              },
            ),
            DataColumn(label: Text('作者')),
            DataColumn(label: Text('图片')),
          ],
        )
      ],
    );
  }
}
//Card 列表

class CardDemo extends StatefulWidget {
  CardDemo({Key key}) : super(key: key);

  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: articles.map((Article item) {
        return Card(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)),
                  child: Image.network(
                    item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item.imageUrl),
                ),
                title: Text(item.title),
                subtitle: Text(item.author),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  item.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Like'),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text('Read'),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
