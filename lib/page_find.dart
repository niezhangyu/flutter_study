import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FindPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState()  => new _FindPageState();
}


class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text(
        "我是发现"
      ),
    );
  }


}