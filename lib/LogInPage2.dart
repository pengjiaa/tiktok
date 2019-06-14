import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:tiktok/test.dart';
import 'package:tiktok/Index.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage>
    with SingleTickerProviderStateMixin {
  bool _isShow = false;
  Animation _animation;
  AnimationController _animationController;
  bool _autofocusee = false;
  FocusNode _contentFocusNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _autofocusee = false;
    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _animation = Tween(begin: -300.0, end: 100.0).animate(_animationController);
    _animation.addListener(() {
      setState(() {});
    });
    // _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("登录或注册"),
            ),
            body: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("登录"),
                  onPressed: () {
                    _showpop(context);
                  },
                ),
                RaisedButton(
                  child: Text("注册"),
                  onPressed: () {
                    _showpop(context);
                  },
                ),
              ],
            )));
  }

  _showpop(context) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return new SimpleDialog(
          title: new Text('注册或登录'),
          children: <Widget>[
            new SimpleDialogOption(
              child: new TextField(),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new SimpleDialogOption(
              child: new TextField(),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("取消"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return new Index();
                      }),
                    );
                  },
                  child: Text("确定"),
                ),
              ],
            )
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }
}
