import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/widgets/LibraryIconWidget.dart';
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
          height: 170.0,
          child: LibraryListScroll(
            page: libraryPageData,
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        LibraryPageIconWidget(
          myIcon: Icons.history,
          myIconName: 'History',
        ),
        LibraryPageIconWidget(
          myIcon: Icons.slideshow,
          myIconName: 'My Videos',
        ),
        LibraryPageIconWidget(
          myIcon: Icons.loyalty,
          myIconName: 'Purchases',
        ),
        LibraryPageIconWidget(
          myIcon: Icons.watch_later,
          myIconName: 'Watch later',
          mySubtitle: '9 videos',
        ),
        Divider(
          height: 30.0,
          color: Colors.grey,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Playlists',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Row(
                children: <Widget>[
                  Text('Recently added'),
                  Icon(Icons.expand_more),
                ],
              ),
            ],
          ),
        ),
        LibraryPageIconWidget(
          myIcon: Icons.add,
          myIconName: 'New Playlist',
          myColor: Colors.blue,
        ),
        LibraryPageIconWidget(
          myIcon: Icons.thumb_up,
          myIconName: 'Liked Videos',
          mySubtitle: '19 videos',
        ),
        SizedBox(
          height: 200.0,
        ),
      ],
    );
  }
}
