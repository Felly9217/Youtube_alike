import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {

  MyIconButton({this.myIcon});

  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(myIcon),
      onPressed: () {},
    );
  }
}