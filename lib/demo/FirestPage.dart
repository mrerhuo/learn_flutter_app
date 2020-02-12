import 'package:flutter/material.dart';

class FirestPage extends StatelessWidget {
  final TextStyle _textStyle =
      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red);
  final String _author = '屈原';
  final String _title = '云中君';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: Text(
                '《$_title》\n作者:$_author\n浴兰汤兮沐芳，华采衣兮若英；灵连蜷兮既留，烂昭昭兮未央；謇将憺兮寿宫，与日月兮齐光；龙驾兮帝服，聊翱游兮周章；灵皇皇兮既降，猋远举兮云中；览冀洲兮有余，横四海兮焉穷；思夫君兮太息，极劳心兮忡忡；',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: _textStyle)),
        Card(
          child: RichText(
              text: TextSpan(
                  text: 'erxiansheng',
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w100),
                  children: [
                TextSpan(
                    text: '.jianchi',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey)),
              ])),
        ),
        Container(
          //color: Colors.grey[200],使用颜色则不能使用decoration
          decoration: BoxDecoration(
            image:DecorationImage(
              image:NetworkImage('https://resources.ninghao.org/images/dragon.jpg'),
              fit: BoxFit.cover,//图像布局
              alignment: Alignment.topCenter,//布局
              colorFilter:ColorFilter.mode(Colors.red[300], BlendMode.hardLight)//滤镜
            )
          ),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
            Container(
              //color: Colors.blue,设置颜色会和decoration冲突
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(9),
              width: 90,
              height: 90,
              child: Icon(Icons.pool, size: 36, color: Colors.white),
              decoration: BoxDecoration(//使用时，不需要设置Container的color
                color:Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                  color:Colors.indigoAccent[100],
                  width:3.0,
                  style:BorderStyle.solid
                ),
                //borderRadius: BorderRadius.circular(20),使用shape变形时，需要注释掉
                boxShadow: [
                  BoxShadow(
                    offset:Offset(6.0,7.0),//偏移方向
                    color:Color.fromRGBO(16, 20, 188, 1),//阴影颜色
                    blurRadius: 30,//模糊程度
                    spreadRadius: -3//阴影大小
                  )
                ],
                shape: BoxShape.circle,//shape变形时，需要注释掉borderRadius
                // gradient: RadialGradient(//镜像渐变效果
                //   colors:[
                //     Color.fromRGBO(7, 102, 255, 1),
                //     Color.fromRGBO(3, 28, 128, 1),
                //   ]
                // ),
                gradient: LinearGradient(//线性渐变
                  colors:[
                    Color.fromRGBO(7, 102, 255, 1),
                    Color.fromRGBO(3, 28, 128, 1),
                  ],
                  begin: Alignment.topCenter,
                  end:Alignment.bottomCenter
                ),
              ),
              )
          ]),
        ),
      ],
    );
  }
}
