import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:tiktok/test.dart';

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
      body: Container(
          width: 360,
          color: Colors.black26,
          padding: EdgeInsets.only(top: 30),
          child: Stack(
            children: <Widget>[
              Positioned(
                // top: _animation.value != null ? _animation.value : -300,
                // top: 50,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        //   Container(
                        // width: 250,
                        // height: 100,
                        TextField(
                            // focusNode: _contentFocusNode,
                            // keyboardType: TextInputType.number,
                            // // decoration: InputDecoration(
                            // //   contentPadding: EdgeInsets.all(20),
                            // //   icon: Icon(Icons.ac_unit),
                            // //   labelText: "aaaaa",
                            // //   helperText: "bbbb",
                            // // ),
                            // autofocus: _autofocusee,
                            // onChanged: (str) {
                            //   print(str);
                            // },
                            // inputFormatters: [
                            //   WhitelistingTextInputFormatter(RegExp("[a-z]"))
                            // ],
                            ),

                        //   width: 250,
                        //   height: 100,
                        //   child: TextField(
                        //       // focusNode: _contentFocusNode,
                        //       // keyboardType: TextInputType.number,
                        //       // decoration: InputDecoration(
                        //       //   contentPadding: EdgeInsets.all(20),
                        //       //   icon: Icon(Icons.ac_unit),
                        //       //   labelText: "aaaaa",
                        //       //   helperText: "bbbb",
                        //       // ),
                        //       // autofocus: _autofocusee,
                        //       // onChanged: (str) {
                        //       //   print(str);
                        //       // },
                        //       // inputFormatters: [
                        //       //   WhitelistingTextInputFormatter(RegExp("[a-z]"))
                        //       // ],
                        //       ),
                        //   )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 150,
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("注册"),
                          onPressed: () {
                            setState(() {
                              _isShow = !_isShow;
                              _contentFocusNode.hasFocus;
                              _animationController.forward();
                            });
                          },
                        ),
                        RaisedButton(
                          child: Text("登录"),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   new MaterialPageRoute(
                            //       builder: (context) => new Test()),
                            // );
                            setState(() {
                              _animationController.reverse();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    ));
  }

  _showpop() {}
}

class Popup extends StatelessWidget {
  bool visible;
  Popup({Key key, this.visible}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: visible,
      child: Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Text("ddddddddddd"),
      ),
    );
  }
}
