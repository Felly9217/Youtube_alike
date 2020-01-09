import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/constants.dart';

class LibraryPageIconWidget extends StatelessWidget {
  final String myIconName;
  final String mySubtitle;
  final IconData myIcon;
  final Color myColor;

  LibraryPageIconWidget({
    this.myIcon,
    this.myIconName,
    this.mySubtitle,
    this.myColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
      child: Row(
        children: <Widget>[
          Icon(
            myIcon,
            color: myColor == null ? Colors.grey : myColor,
          ),
          SizedBox(
            width: 20.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  myIconName,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: myColor == null ? Colors.black : myColor,
                  ),
                ),
                mySubtitle == null
                    ? Container()
                    : Text(
                        mySubtitle,
                        style: TextStyle(
                          color: kBottomNavigatorColors,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
