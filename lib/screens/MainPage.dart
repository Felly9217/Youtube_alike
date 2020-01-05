import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_alike/screens/Subscriptions.dart';
import 'package:youtube_alike/screens/trending.dart';
import 'package:youtube_alike/widgets/MyIconButton.dart';
import 'package:youtube_alike/screens/home.dart';
import 'package:youtube_alike/utilities/constants.dart';

class MyMain extends StatefulWidget {
  @override
  _MyMainState createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  int _currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    TrendingPage(),
    SubscriptionsPage(),
    Container(child: Center(child: Text('Inbox')),),
    Container(child: Center(child: Text('Library')),),
  ];

  _myTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 0.0,
            flexibleSpace: Container(
              decoration: kBorderDecoration,
              height: kHeightBorderBetweenAppBarAndTabBar,
            ),
            floating: true,
            elevation: 1.0,
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
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                pages[_currentIndex],
              ]
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        decoration: kBorderDecoration,
        child: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red,
            onTap: _myTapped,
            unselectedLabelStyle: TextStyle(fontSize: 10.0),
            selectedLabelStyle: TextStyle(fontSize: 10.0),
            items: [
              BottomNavigationBarItem(
                  title: Text('Home'), icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  title: Text('Trending'), icon: Icon(FontAwesomeIcons.fire)),
              BottomNavigationBarItem(
                  title: Text('Subscriptions'),
                  icon: Icon(Icons.subscriptions)),
              BottomNavigationBarItem(
                  title: Text('Inbox'), icon: Icon(Icons.email)),
              BottomNavigationBarItem(
                  title: Text('Library'), icon: Icon(Icons.video_library))
            ]),
      ),
    );
  }
}
