import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:tiktok/utils/dimens.dart';

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
        body: ListView(
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  new BoxConstraints.loose(new Size(Dimens.x_375, 170.0)),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                      "https://img08.jiuxian.com/bill/2019/1231/d683f99fd00349ea811b24c0c2d0a17c.jpg",
                      fit: BoxFit.fill);
                },
                itemCount: 3,
                pagination: SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                      size: 10.0,
                      activeSize: 10.0,
                      space: 4.0,
                      activeColor: Colors.red),
                ),
                autoplay: true,
              ),
            ),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ButtonCustom(
                    image: Image.network(
                        "https://img07.jiuxian.com/bill/2019/1231/2437d0d4780446b0b3238dae86d06f36.jpg",
                        width: Dimens.x_30,
                        height: Dimens.y_43),
                    title: "白酒",
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ButtonCustom(
                    image: Image.network(
                        "https://img07.jiuxian.com/bill/2019/1231/2437d0d4780446b0b3238dae86d06f36.jpg",
                        width: Dimens.x_30,
                        height: Dimens.y_43),
                    title: "啤酒",
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ButtonCustom(
                    image: Image.network(
                        "https://img07.jiuxian.com/bill/2019/1231/2437d0d4780446b0b3238dae86d06f36.jpg",
                        width: Dimens.x_30,
                        height: Dimens.y_43),
                    title: "葡萄酒",
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ButtonCustom(
                    image: Image.network(
                        "https://img07.jiuxian.com/bill/2019/1231/2437d0d4780446b0b3238dae86d06f36.jpg",
                        width: Dimens.x_30,
                        height: Dimens.y_43),
                    title: "洋酒",
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ButtonCustom(
                    image: Image.network(
                        "https://img07.jiuxian.com/bill/2019/1231/2437d0d4780446b0b3238dae86d06f36.jpg",
                        width: Dimens.x_30,
                        height: Dimens.y_43),
                    title: "保健酒",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Align(child: Text("热门推荐"), alignment: Alignment.centerLeft),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                              "https://img06.jiuxian.com/2019/1030/a9e0c861638641fc82c608e36d6ffee04.jpg"),
                          Text("¥222.00")
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                              "https://img06.jiuxian.com/2019/1030/a9e0c861638641fc82c608e36d6ffee04.jpg"),
                          Text("¥222.00")
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                              "https://img06.jiuxian.com/2019/1030/a9e0c861638641fc82c608e36d6ffee04.jpg"),
                          Text("¥222.00")
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Align(
                  child: Text("经典浓香"),
                  alignment: Alignment.centerLeft,
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            child: Text("汉酱"),
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Padding(
                            child: Text("¥434"),
                            padding: EdgeInsets.only(right: 100),
                          ),
                          Image.network(
                              "https://img06.jiuxian.com/2019/1030/a9e0c861638641fc82c608e36d6ffee04.jpg")
                          // Align(
                          //   child: Text("359"),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            child: Text("汉酱"),
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Padding(
                            child: Text("¥434"),
                            padding: EdgeInsets.only(right: 100),
                          ),
                          Image.network(
                            "https://img06.jiuxian.com/2019/1030/a9e0c861638641fc82c608e36d6ffee04.jpg",
                            height: 50,
                            width: 187,
                          )
                          // Align(
                          //   child: Text("359"),
                          //   alignment: Alignment.topRight,
                          // ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Column(
                    //     children: <Widget>[
                    //       Align(
                    //         child: Text("汉酱"),
                    //         alignment: Alignment.topLeft,
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}

class Banner extends StatefulWidget {
  // final List<BannerList> list;
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ButtonCustom extends StatefulWidget {
  final Widget image;
  final String title;
  final Function onPressed;
  ButtonCustom({Key key, this.image, this.title, this.onPressed})
      : super(key: key);
  @override
  _ButtonCustomState createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Column(
        children: <Widget>[
          Container(
            child: widget.image,
            margin: EdgeInsets.only(bottom: Dimens.y_8, top: Dimens.y_8),
          ),
          Text(widget.title,
              style: TextStyle(color: Color(0xFF333333), fontSize: Dimens.f_14))
        ],
      ),
      splashColor: Color(0xFFffffff),
      color: Color(0xFFffffff),
      highlightColor: Color(0xFFffffff),
      padding: EdgeInsets.all(0),
      onPressed: widget.onPressed,
    );
  }
}

class Recommend extends StatefulWidget {
  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
