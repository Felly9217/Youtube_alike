import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  TabMenu({@required this.textTitle, this.myTap, this.color, this.textColor});

  final String textTitle;
  final Function myTap;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Color(0xFFF0F0F0)),
            borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          textTitle,
          style: TextStyle(
            color: textColor
          ),
        ),
      ),
    );
  }
}