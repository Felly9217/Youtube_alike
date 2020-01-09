import 'package:flutter/material.dart';


class NetworkImageBuilder extends StatelessWidget {
  NetworkImageBuilder({@required this.myImage, @required this.myHeight, @required this.myWidth, this.myDuration});

  final String myImage;
  final double myHeight;
  final double myWidth;
  final String myDuration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight,
      width: myWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              myImage),
          fit: BoxFit.cover,
        ),
      ),
      child: myDuration == null ? null : Container(
        alignment: Alignment(1.0, 1.0),
        child: Text(
          myDuration,
          style: TextStyle(
            backgroundColor: Colors.black,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}