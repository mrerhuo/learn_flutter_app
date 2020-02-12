import 'package:flutter/material.dart';
import '../model/Article.dart';

class Details extends StatefulWidget {
  Details({Key key, this.article}) : super(key: key);
  final Article article;
  @override
  ListViewState createState() => ListViewState();
}

class DetailsState extends State<Details> {
  Article article;
  @override
  void initState() {
    super.initState();
    article = widget.article;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${article.title}'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(article.imageUrl),
          ),
          Text('${article.title}', style: Theme.of(context).textTheme.title),
          Text('${article.author}', style: Theme.of(context).textTheme.subhead),
          SizedBox(height: 32.0),
          Text('${article.description}',
              style: Theme.of(context).textTheme.subhead)
        ],
      ),
    );
  }
}

class ListViewState extends State<Details> {
  Article article;
  @override
  void initState() {
    super.initState();
    article = widget.article;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true, //固定头部
            floating: true, //
            expandedHeight: 178.0, //扩展空间
            //title: Text('SliverList'),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '${article.title}',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
              background: Image.network(article.imageUrl, fit: BoxFit.cover),
            ),
          ),
          //SliverFixedExtentList\SliverToBoxAdapter两种拼接 这种最好
          SliverToBoxAdapter(
            child: DetailInfoWidget(article: article),
          ),
          // SliverToBoxAdapter(
          //   child:  SizedBox(height: 10.0),
          // ),
          // SliverToBoxAdapter(
          //   child: Text('${article.title}', style: Theme.of(context).textTheme.title),
          // ),
          // SliverToBoxAdapter(
          //   child: Text('${article.author}', style: Theme.of(context).textTheme.subhead),
          // ),
          // SliverToBoxAdapter(
          //   child:  SizedBox(height: 32.0),
          // ),
          // SliverToBoxAdapter(
          //   child: Text('${article.description}', style:TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400)),
          // )
        ],
      ),
    );
  }
}

class DetailInfoWidget extends StatefulWidget {
  DetailInfoWidget({Key key, this.article}) : super(key: key);
  final Article article;

  @override
  _DetailInfoWidgetState createState() => _DetailInfoWidgetState();
}

class _DetailInfoWidgetState extends State<DetailInfoWidget> {
  Article article;
  @override
  void initState() {
    super.initState();
    article = widget.article;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text('${article.title}', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400)),
          Text('${article.author}', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400)),
          SizedBox(height: 32.0),
          Text('${article.description}',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
