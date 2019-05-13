import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> _tabList = [
    "首页",
    "后端",
    "前端",
    "ANDROID",
    "IOS",
    "人工智能",
    "开发工具",
    "代码人生",
    "阅读"
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xff1E90FF),
        bottom: new TabBar(

          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: new Color(0x99FFFFFF),
          tabs: _tabList.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: new Text("首页"),
    );
  }
}
