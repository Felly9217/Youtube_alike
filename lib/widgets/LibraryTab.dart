import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/widgets/NetworkImageBuilder.dart';

class LibraryListScroll extends StatelessWidget {
  final List<YoutubeData> page;

  LibraryListScroll({@required this.page});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            NetworkImageBuilder(
              myHeight: 80.0,
              myWidth: 170.0,
              myImage: page[index].thumbNail,
              myDuration: page[index].duration,
            ),
            Container(
              width: 185.0,
              child: ListTile(
                title: Text(page[index].title),
                subtitle: Text(page[index].username),
                trailing: Container(
                  width: 15.0,
                  alignment: Alignment(1.0, -1.0),
                  child: Icon(Icons.more_vert),
                ),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: page.length,
    );
  }
}
