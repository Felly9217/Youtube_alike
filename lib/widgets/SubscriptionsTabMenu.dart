import 'package:flutter/material.dart';

class SubscriptionsTabMenu extends StatelessWidget {
  final String url;
  final String myText;

  SubscriptionsTabMenu({@required this.url, @required this.myText});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(
        width: 70.0,
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                url),
            radius: 28.0,
          ),
          Flexible(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              strutStyle: StrutStyle(fontSize: 25.0),
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                text: myText,
              ),
            ),
          )
        ],
      ),
    );
  }
}