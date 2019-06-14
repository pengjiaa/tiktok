import 'package:flutter/material.dart';
import 'dart:convert';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String str1 = '{"a":1}';
  Map map1 = {"aaa": 111, "bbb": 222};
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("测试页面"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: listtile1,
            title: Text("111"),
          )
        ],
      ),
    );
  }

  listtile1() {
    print(json.decode(str1).runtimeType);
    print(json.encode(map1).runtimeType);
  }
}
