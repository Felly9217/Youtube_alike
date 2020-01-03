import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  TabMenu({@required this.textTitle});

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
          color: Color(0xFFF0F0F0),
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0)),
      child: Text(
        textTitle,
      ),
    );
  }
}