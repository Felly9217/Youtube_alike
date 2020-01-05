import 'package:flutter/material.dart';
import 'package:youtube_alike/widgets/BuildVideoList.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/widgets/TabMenu.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TabMenu(textTitle: 'All'),
              TabMenu(textTitle: 'Basketball'),
              TabMenu(textTitle: 'One Piece'),
              TabMenu(textTitle: 'Computer programming'),
              TabMenu(textTitle: 'Cooking'),
              TabMenu(textTitle: 'NBA 2k20'),
            ],
          ),
        ),
        BuildVideoList(page: homePageData),
      ],
    );
  }
}
