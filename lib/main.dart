import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'tiktok_icon_icons.dart';
import 'package:tiktok_project/image_rotate.dart';
import 'package:tiktok_project/musical_notes.dart';
import 'package:tiktok_project/feed_post.dart';
import 'package:marquee/marquee.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'ProximaNova'),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  Color _primaryColor = Colors.black;
  double width = 0;
  double height = 0;

  final tabs = [
    // ================== HOME ==================
    Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Video.png'), fit: BoxFit.fill))),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xaa000000), Color(0x00000000)],
                begin: Alignment(0, -1),
                end: Alignment(0, -0.5))),
        foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xaa000000), Color(0x00000000)],
                begin: Alignment(0, 1.2),
                end: Alignment(0, 0.2))),
      ),
      Container(
          child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: 0.0,
              )),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(width: 0.0, height: 0.0),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Following',
                              style: TextStyle(
                                  fontFamily: 'ProximaNova',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19.0,
                                  color: Colors.grey[400])),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '|',
                                style: TextStyle(color: Colors.grey[400]),
                              )),
                          Text('For You',
                              style: TextStyle(
                                  fontFamily: 'ProximaNova',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21.0,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(width: 0.0, height: 0.0),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 7,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('@spankaroonie',
                                  style: TextStyle(
                                      fontFamily: 'ProximaNova',
                                      color: Color(0xeeffffff),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(height: 15),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xccffffff)),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'just coded out the tiktok app on flutter!  ',
                                        style: TextStyle(
                                            fontFamily: 'ProximaNova')),
                                    TextSpan(
                                        text: '#fyp',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xeeffffff),
                                            fontFamily: 'ProximaNova'))
                                  ])),
                              SizedBox(height: 15),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Icon(TiktokIcon.music,
                                        color: Colors.white, size: 14),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      width: 500,
                                      height: 20,
                                      child: Marquee(
                                        blankSpace: 10,
                                        text: '@spankaroonie Original',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xaaffffff),
                                            fontFamily: 'ProximaNova',
                                            fontSize: 16),
                                        scrollAxis: Axis.horizontal,
                                        fadingEdgeStartFraction: 0.2,
                                        fadingEdgeEndFraction: 0.2,
                                      ),
                                    ),
                                  ),
                                  Expanded(flex: 2, child: Container(width: 0))
                                ],
                              ),
                            ]),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(width:35),
                              Column(
                                children:<Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 8,
                                              color: Color(0x22000000),
                                              spreadRadius: 8,
                                              offset: Offset(1, 1))
                                        ]),
                                    child: CircleAvatar(
                                        child: CircleAvatar(
                                          backgroundImage:
                                          AssetImage('assets/photo.png'),
                                          radius: 33,
                                        ),
                                        backgroundColor: Colors.white,
                                        radius: 35),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    child: Icon(
                                      TiktokIcon.heart,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0x22000000),
                                              blurRadius: 10.0,
                                              spreadRadius: 6.0,
                                              offset: Offset(2, 0))
                                        ]),
                                  ),
                                  SizedBox(height: 10),
                                  Text('8012',
                                      style: TextStyle(
                                          fontFamily: 'ProximaNova',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                                blurRadius: 5,
                                                color: Color(0xcc000000),
                                                offset: Offset(0.5, 0.5))
                                          ])),
                                  SizedBox(height: 25),
                                  Container(
                                      child: Icon(TiktokIcon.comment,
                                          color: Colors.white, size: 40),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0x22000000),
                                                blurRadius: 10.0,
                                                spreadRadius: 6.0,
                                                offset: Offset(2, 0))
                                          ])),
                                  SizedBox(height: 10),
                                  Text('612',
                                      style: TextStyle(
                                          fontFamily: 'ProximaNova',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                                blurRadius: 5,
                                                color: Color(0xcc000000),
                                                offset: Offset(0.5, 0.5))
                                          ])),
                                  SizedBox(height: 25),
                                  Container(
                                      child: Icon(TiktokIcon.share,
                                          color: Colors.white, size: 33),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0x22000000),
                                                blurRadius: 10.0,
                                                spreadRadius: 6.0,
                                                offset: Offset(2, 0))
                                          ])),
                                  SizedBox(height: 10),
                                  Text('389',
                                      style: TextStyle(
                                          fontFamily: 'ProximaNova',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                                blurRadius: 5,
                                                color: Color(0xcc000000),
                                                offset: Offset(0.5, 0.5))
                                          ])),
                                ]
                              )
                            ]
                          ),

                          SizedBox(height: 30),
                          // CircleAvatar(
                          //   backgroundImage: AssetImage('assets/photo.png'),
                          //   radius: 33,
                          // ),
                          Stack(
                              alignment: Alignment.topRight,
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 100,
                                    child: MusicalNotes()),
                                Container(
                                    width: 72,
                                    height: 85,
                                    child: ImageRotate())
                              ]),
                          SizedBox(height: 20),
                        ],
                      ))
                ],
              )),
        ],
      ))
    ]),
    // ),
    // === DISCOVER ===
    Stack(children: [
      Container(
        decoration:
            BoxDecoration(boxShadow: [BoxShadow(color: Color(0x55000000))]),
      ),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              width: 20,
              child: MusicalNotes(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 200,
              child: Marquee(
                text: '@spankaroonie Original',
                style: TextStyle(fontFamily: 'ProximaNova', fontSize: 14),
                scrollAxis: Axis.horizontal,
                fadingEdgeStartFraction: 0.2,
                fadingEdgeEndFraction: 0.2,
              ),
            ),
          ),
        ],
      ),
      Container(),
    ]),
    // ================== NEW ==================
    Center(child: Text('New')),
    // ================== INBOX ==================
    Center(
        child: SizedBox(
      width: 500,
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image(
              image: AssetImage('assets/Video.png'),
              fit: BoxFit.fill,
              height: 230),
          Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xaa000000), Color(0x00000000)],
                    begin: Alignment(0, 1.2),
                    end: Alignment(0, 0.2))),
          ),
        ],
      ),
    )),
    // ================== ME ==================
    Scaffold(
      appBar: AppBar(
        title: Text('spankaroonie',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        centerTitle: true,
        backgroundColor: Color(0x00ffffff),
        elevation: 0,
        leading: IconButton(icon: Icon(TiktokIcon.add, color: Colors.black)),
        actions: [
          IconButton(icon: Icon(Icons.more_horiz, color: Colors.black)),
        ],
      ),
      body: Container(
          child: Center(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/photo.png'),
              radius: 44,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('@spankaroonie',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: <Widget>[
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Text('13',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w700)),
                    Text('Following',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Text('6',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w700)),
                    Text('Followers',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Text('10',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w700)),
                    Text('Likes',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey))
                  ],
                ),
              ),
              Expanded(flex: 1, child: Container()),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        child: Text('Edit profile',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600)),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200], width: 2),
                          borderRadius: BorderRadius.circular(2))),
                  SizedBox(width: 5),
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Icon(Icons.bookmark_outline, size: 28),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200], width: 2),
                          borderRadius: BorderRadius.circular(2))),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Old & rusty', style: TextStyle(fontSize: 16)),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(TiktokIcon.link, size: 14),
              SizedBox(width: 5),
              Text('https://youtube.com/c/spankaroonie',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ]),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 3.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Icon(TiktokIcon.feed, size: 21),
                      ))),
              Expanded(flex: 4, child: Container()),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(TiktokIcon.liked,
                        size: 21, color: Colors.grey[350]),
                  )),
              Expanded(flex: 2, child: Container()),
            ],
          ),
          Container(
            height: 220,
            child: Row(children: <Widget>[
              Expanded(
                  flex: 1,
                  child: AspectRatio(
                    aspectRatio: 1 / 3,
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        FeedPost(img: AssetImage('assets/alpacca.png')),
                        Container(
                          foregroundDecoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            color: Color(0x77000000),
                          ),
                        ),
                        Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(TiktokIcon.draft,
                                    color: Colors.white, size: 32),
                                SizedBox(height: 10),
                                Text('Drafts: 8',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600))
                              ]),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: AspectRatio(
                    aspectRatio: 1 / 3,
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        FeedPost(img: AssetImage('assets/israel.png')),
                        Container(
                          foregroundDecoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xaa000000),
                                    Color(0x00000000)
                                  ],
                                  begin: Alignment(0, 1.2),
                                  end: Alignment(0, 0.2))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(TiktokIcon.play,
                                        color: Colors.white, size: 18),
                                    SizedBox(width: 6),
                                    Text('44',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Colors.white)),
                                  ]),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: AspectRatio(
                    aspectRatio: 1 / 3,
                    child: Stack(
                      fit: StackFit.expand,
                      clipBehavior: Clip.hardEdge,
                      children: [
                        FeedPost(img: AssetImage('assets/meandmel.png')),
                        Container(
                          foregroundDecoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xaa000000),
                            Color(0x00000000)
                          ], begin: Alignment(0, 1.2), end: Alignment(0, 0.2))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(TiktokIcon.play,
                                        color: Colors.white, size: 18),
                                    SizedBox(width: 6),
                                    Text('38',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Colors.white)),
                                  ]),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ]),
          ),
        ]),
      )),
    )
  ];

  Color _secondaryColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    setState(() {
      height = SizeConfig.screenHeight;
      width = SizeConfig.screenWidth;
    });
    return Scaffold(
      body: SizedBox(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: tabs[_currentIndex]),
      bottomNavigationBar: Container(
        foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffaaaaaa), Color(0x00000000)],
                begin: Alignment(0, -1),
                end: Alignment(0, -0.95))),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          // backgroundColor: Color(0x00000000),
          backgroundColor: _primaryColor,
          selectedItemColor: _secondaryColor,
//          unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
          unselectedItemColor: Colors.grey[400],
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Icon(TiktokIcon.home, size: 21),
                ),
                label: 'Home',
                tooltip: '',
                backgroundColor: Colors.grey[400]),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Icon(TiktokIcon.discover, size: 21.0),
                ),
                label: 'Discover',
                tooltip: '',
                backgroundColor: Colors.grey[400]),
            BottomNavigationBarItem(
              icon: Container(
                child: Container(
                  margin: EdgeInsets.only(top: 5.0),
                  padding: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(11),
                        topRight: Radius.circular(11),
                        bottomRight: Radius.circular(11),
                        bottomLeft: Radius.circular(11),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            spreadRadius: -.5,
                            color: Color(0xff65D1E8),
                            offset: Offset(-5, 0)),
                        BoxShadow(
                            spreadRadius: -.5,
                            color: Color(0xffE5436D),
                            offset: Offset(5, 0)),
                        BoxShadow(spreadRadius: -2.0, color: _primaryColor)
                      ]),
                  child: Icon(TiktokIcon.new_icon,
                      size: 36, color: _secondaryColor),
                ),
                height: 42,
                width: 50,
              ),
              label: '',
              tooltip: '',
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Icon(TiktokIcon.inbox, size: 21.0),
                ),
                label: 'Inbox',
                tooltip: '',
                backgroundColor: Colors.grey[400]),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Icon(TiktokIcon.me, size: 21.0),
                ),
                label: 'Me',
                tooltip: '',
                backgroundColor: Colors.grey[400]),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _primaryColor = index == 0 ? Colors.black : Colors.white;
              _secondaryColor = index == 0 ? Colors.white : Colors.black;
            });
          },
        ),
      ),
    );
  }
}

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

//BottomNavigationBarItem(
//icon: IconButton(
//icon: Container(
//child: ImageIcon(AssetImage('assets/new.png')),
//decoration: BoxDecoration(boxShadow: <BoxShadow>[
//BoxShadow(
//color: Colors.black54,
//blurRadius: 50.0,
//offset: Offset(0.0, 0.75))
//]),
//)),
//label: 'Home',
//activeIcon: Container(
//height: 15.0,
//child: ImageIcon(AssetImage('assets/new.png')),
//decoration: BoxDecoration(
//borderRadius: BorderRadius.only(
//topLeft: Radius.circular(5),
//topRight: Radius.circular(5),
//bottomRight: Radius.circular(5),
//bottomLeft: Radius.circular(5),
//),
//boxShadow: <BoxShadow>[
//BoxShadow(
//color: Color(0xff56d1e8),
//spreadRadius: 0.0,
//offset: Offset(2.5, 0.0)),
//BoxShadow(
//color: Color(0xffe5436d),
//spreadRadius: 0.0,
//offset: Offset(-2.5, 0.0))
//]),
//)),

//
//class TiktokBtmBarItem {
//  TiktokBtmBarItem({this.iconData, this.text});
//
//  IconData iconData;
//  String text;
//}
//
//class TiktokBtmBar extends StatefulWidget {
//  TiktokBtmBar({
//    this.items,
//    this.centerItemText,
//    this.height: 60.0,
//    this.iconSize: 24.0,
//    this.backgroundColor,
//    this.color,
//    this.selectedColor,
//    this.onTabSelected,
//  });
//
//  final List<TiktokBtmBarItem> items;
//  final ValueChanged<int> onTabSelected;
//  final String centerItemText;
//  final double height;
//  final double iconSize;
//  final Color backgroundColor;
//  final Color color;
//  final Color selectedColor;
//
//  @override
//  _TiktokBtmBarState createState() => _TiktokBtmBarState();
//}
//
//class _TiktokBtmBarState extends State<TiktokBtmBar> {
//  int _selectedIndex = 0;
//
//  _updateIndex(int index) {
//    widget.onTabSelected(index);
//    setState(() {
//      _selectedIndex = index;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    List<Widget> items = List.generate(widget.items.length, (int index) {
//      return _buildTabItem(
//        item: widget.items[index],
//        index: index,
//        onPressed: _updateIndex,
//      );
//    });
//
//    return Container();
//  }
//
//  Widget _buildTabItem({
//    TiktokBtmBarItem item,
//    int index,
//    ValueChanged<int> onPressed,
//  }) {
//    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
//    return Expanded(
//      child: SizedBox(
//        height: widget.height,
//        child: Material(
//          type: MaterialType.transparency,
//          child: InkWell(
//            onTap: () => onPressed(index),
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Icon(item.iconData, color: color, size: widget.iconSize),
//                Text(
//                  item.text,
//                  style: TextStyle(color: color),
//                )
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
