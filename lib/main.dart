import 'package:flutter/material.dart';
import 'screens/MainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryTextTheme: Typography(platform: TargetPlatform.android).black,
        primaryIconTheme: IconThemeData(
          color: Color(0xFF606060),
        )
      ),
      home: MyMain(),
      debugShowCheckedModeBanner: false,
    );
  }
}
