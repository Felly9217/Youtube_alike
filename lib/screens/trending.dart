import 'package:flutter/material.dart';
import 'package:youtube_alike/widgets/BuildVideoList.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_alike/widgets/TrendingTabMenu.dart';

class TrendingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10.0),
          height: 85.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TrendingTabMenu(icon: FontAwesomeIcons.music, myText: 'Music'),
              TrendingTabMenu(icon: FontAwesomeIcons.gamepad, myText: 'Gaming'),
              TrendingTabMenu(icon: FontAwesomeIcons.newspaper, myText: 'News'),
              TrendingTabMenu(icon: FontAwesomeIcons.film, myText: 'Movies'),
              TrendingTabMenu(icon: FontAwesomeIcons.tshirt, myText: 'Fashion'),
            ],
          ),
        ),
        BuildVideoList(page: trendingPageData),
      ],
    );
  }

}


