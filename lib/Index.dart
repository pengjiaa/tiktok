import 'package:flutter/material.dart';
import 'package:tiktok/LogInPage.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  //内容页面列表
  List<StatefulWidget> _pageList;
  int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
        centerTitle: true,
        leading: Text(''),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text("11")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text("22")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text("33")),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Center(child: Text("内容")),
    );
  }
}
