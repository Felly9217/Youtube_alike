import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_alike/widgets/BuildVideoList.dart';
import 'package:youtube_alike/widgets/TabMenu.dart';
import 'package:youtube_alike/widgets/MyIconButton.dart';
import 'package:youtube_alike/screens/home.dart';


class MyMain extends StatefulWidget {
  @override
  _MyMainState createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  int _currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
  ];


  _myTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0.0,
          leading: Icon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
            size: 30.0,
          ),
          title: Text(
            'Youtube',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            MyIconButton(myIcon: Icons.cast),
            MyIconButton(myIcon: Icons.videocam),
            MyIconButton(myIcon: Icons.search),
            MyIconButton(myIcon: Icons.account_circle),
          ],
          bottom: PreferredSize(
            child: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
              tabs: [
                TabMenu(textTitle: 'All'),
                TabMenu(textTitle: 'Basketball'),
                TabMenu(textTitle: 'One Piece'),
                TabMenu(textTitle: 'Computer programming'),
                TabMenu(textTitle: 'Cooking'),
                TabMenu(textTitle: 'NBA 2k20'),
              ],
            ),
            preferredSize: Size(50, 50),
          ),
        ),
        body: BuildVideoList(),
        bottomNavigationBar: Container(
          height: 60.0,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: Color(0xFFD4D4D4),
              ),
              bottom: BorderSide(
                width: 1.0,
                color: Color(0xFFD4D4D4),
              ),
            ),
          ),
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.red,
              onTap: _myTapped,
              unselectedLabelStyle: TextStyle(fontSize: 10.0),
              selectedLabelStyle: TextStyle(fontSize: 10.0),
              items:[
                BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
                BottomNavigationBarItem(title: Text('Trending'), icon: Icon(FontAwesomeIcons.fire)),
                BottomNavigationBarItem(title: Text('Subscriptions'), icon: Icon(Icons.subscriptions)),
                BottomNavigationBarItem(title: Text('Inbox'), icon: Icon(Icons.email)),
                BottomNavigationBarItem(title: Text('Library'), icon: Icon(Icons.video_library))
              ]
          ),
        ),
      ),
    );
  }
}


