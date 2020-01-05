import 'package:flutter/material.dart';
import 'package:youtube_alike/widgets/BuildVideoList.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/widgets/MyIconButton.dart';
import 'package:youtube_alike/widgets/SubscriptionsTabMenu.dart';

class SubscriptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            height: 100.0,
            width: 350.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SubscriptionsTabMenu(
                  url:
                      'https://yt3.ggpht.com/a/AGF-l79d7bv3lD8Hf5Cu3jBLyekhBnG9tDQt3we-LA=s88-c-k-c0xffffffff-no-rj-mo',
                  myText: 'CNN',
                ),
                SubscriptionsTabMenu(
                  url:
                      'https://yt3.ggpht.com/a/AGF-l79JlRdgRZZccpVkxyZIjXuVRvjctvpvfafHUQ=s88-c-k-c0xffffffff-no-rj-mo',
                  myText: 'Dr. Phil',
                ),
                SubscriptionsTabMenu(
                  url:
                      'https://yt3.ggpht.com/a/AGF-l7_sFD-R_7HD4eVRrtFp4flC2vUKSv9pf3wX_g=s88-c-k-c0xffffffff-no-rj-mo',
                  myText: 'ESPN',
                ),
                SubscriptionsTabMenu(
                  url:
                      'https://yt3.ggpht.com/a/AGF-l7_q9TFq1FnsQlYCu2zBc_ym1XAEL1Gp_XHVpA=s88-c-k-c0xffffffff-no-rj-mo',
                  myText: 'Comedy Central',
                ),
                SubscriptionsTabMenu(
                  url:
                      'https://yt3.ggpht.com/a/AGF-l7999BXZRpa6UpKd3C_9c2X_XB2q7VWGWJSRdw=s88-c-k-c0xffffffff-no-rj-mo',
                  myText: 'TED',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'ALL',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontSize: 16.0,
              ),
            ),
          ),
        ]),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
            width: 1.0,
            color: Color(0xFFD4D4D4),
          ))),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: Text('Videos and posts'),
              ),
              Container(
                  child: MyIconButton(
                    myIcon: Icons.keyboard_arrow_down,
                  ))
            ],
          ),
        ),
        BuildVideoList(page: subscriptionsPageData),
      ],
    );
  }
}
