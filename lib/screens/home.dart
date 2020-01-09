import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/constants.dart';
import 'package:youtube_alike/widgets/BuildVideoList.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/widgets/TabMenu.dart';

enum tabType {
  All,
  Basketball,
  OnePiece,
  ComputerProgramming,
  Cooking,
  NBA2k20,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  tabType selectedTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TabMenu(
                textTitle: 'All',
                myTap: () {
                  setState(() {
                    selectedTab = tabType.All;
                  });
                },
                color:
                    selectedTab == tabType.All ? kActiveColor : kInactiveColor,
                textColor: selectedTab == tabType.All ? kTextActiveColor : kTextInactiveColor,
              ),
              TabMenu(
                textTitle: 'Basketball',
                myTap: () {
                  setState(() {
                    selectedTab = tabType.Basketball;
                  });
                },
                color: selectedTab == tabType.Basketball
                    ? kActiveColor
                    : kInactiveColor,
                textColor: selectedTab == tabType.Basketball
                    ? kTextActiveColor
                    : kTextInactiveColor,
              ),
              TabMenu(
                textTitle: 'One Piece',
                myTap: () {
                  setState(() {
                    selectedTab = tabType.OnePiece;
                  });
                },
                color: selectedTab == tabType.OnePiece
                    ? kActiveColor
                    : kInactiveColor,
                textColor: selectedTab == tabType.OnePiece
                    ? kTextActiveColor
                    : kTextInactiveColor,
              ),
              TabMenu(
                textTitle: 'Computer programming',
                myTap: () {
                  setState(() {
                    selectedTab = tabType.ComputerProgramming;
                  });
                },
                color: selectedTab == tabType.ComputerProgramming
                    ? kActiveColor
                    : kInactiveColor,
                textColor: selectedTab == tabType.ComputerProgramming
                    ? kTextActiveColor
                    : kTextInactiveColor,
              ),
              TabMenu(
                textTitle: 'Cooking',
                myTap: () {
                  setState(() {
                    selectedTab = tabType.Cooking;
                  });
                },
                color: selectedTab == tabType.Cooking
                    ? kActiveColor
                    : kInactiveColor,
                textColor: selectedTab == tabType.Cooking
                    ? kTextActiveColor
                    : kTextInactiveColor,
              ),
              TabMenu(
                textTitle: 'NBA 2k20',
                myTap: () {
                  setState(() {
                    selectedTab = tabType.NBA2k20;
                  });
                },
                color: selectedTab == tabType.NBA2k20
                    ? kActiveColor
                    : kInactiveColor,
                textColor: selectedTab == tabType.NBA2k20
                    ? kTextActiveColor
                    : kTextInactiveColor,
              ),
            ],
          ),
        ),
        BuildVideoList(page: homePageData),
      ],
    );
  }
}
