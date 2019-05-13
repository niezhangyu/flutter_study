import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MinePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState()  => new _MinePageState();
}


class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text(
        "我是我的"
      ),
    );
  }


}