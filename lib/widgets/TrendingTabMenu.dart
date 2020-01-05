import 'package:flutter/material.dart';

class TrendingTabMenu extends StatelessWidget {
  final IconData icon;
  final String myText;

  TrendingTabMenu({this.icon, this.myText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          RawMaterialButton(
              child: Icon(icon, color: Colors.white,),
              onPressed: (){},
              elevation: 0.0,
              constraints: BoxConstraints.tightFor(
                width: 56.0,
                height: 56.0,
              ),
              shape: CircleBorder(),
              fillColor: Color(0xFF4C4F5E)),
          Text(myText),
        ],
      ),
    );
  }
}