import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juejin/page_find.dart';
import 'package:juejin/page_home.dart';
import 'package:juejin/page_mine.dart';
import 'package:juejin/page_notice.dart';

class JuejinHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _JuejinHomeState();
 
}

class _JuejinHomeState extends State<JuejinHome> {
  List<Widget> pages = List<Widget>();
  Widget _body ;


  @override
  void initState() {
    super.initState();
    pages.add(new HomePage());
    pages.add(new FindPage());
    pages.add(new NoticePage());
    pages.add(new MinePage());

    _body= pages[0];
  }



  @override
  Widget build(BuildContext context) {
    

    return new Scaffold(

      body: _body,
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed:(){
                  setState(() {
                    _body = pages[0];
                  });
                },
              ),
              new IconButton(
                icon: Icon(
                  Icons.search
                ),
                onPressed:(){
                   setState(() {
                    _body = pages[1];
                  });
                },
              ),
              new IconButton(
                icon: Icon(
                  Icons.alarm_on
                ),
                onPressed:(){
                   setState(() {
                    _body = pages[2];
                  });
                },
              ),
              new IconButton(
                icon: Icon(
                  Icons.account_box
                ),
                onPressed:(){
                   setState(() {
                    _body = pages[3];
                  });
                },
              ),
            ],
          
            ),
          
              
            
        ),
      ),
    );
  }
}
