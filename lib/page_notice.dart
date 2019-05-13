import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoticePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState()  => new _NoticePageState();
}


class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text(
        "我是消息"
      ),
    );
  }


}