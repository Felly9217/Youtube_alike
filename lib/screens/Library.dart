import 'package:flutter/material.dart';
import 'package:youtube_alike/widgets/LibraryTab.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
          height: 50.0,
          child: Text(
            'Recent',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        Container(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              LibraryListScroll(),
            ],
          ),
        )
      ],
    );
  }
}

