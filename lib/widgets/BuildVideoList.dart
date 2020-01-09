import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/utilities/constants.dart';

import 'NetworkImageBuilder.dart';

class BuildVideoList extends StatelessWidget {
  BuildVideoList({@required this.page});

  final List<YoutubeData> page;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            NetworkImageBuilder(
              myImage: page[index].thumbNail,
              myWidth: MediaQuery.of(context).size.width,
              myHeight: 220.0,
              myDuration: page[index].duration,
            ),
            Container(
              decoration: kBorderDecoration,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(page[index].avatar),
                ),
                title: Text(page[index].title),
                subtitle: Text(
                    '${page[index].username} . ${page[index].views} . ${page[index].ageOfVideo}'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => Divider(
        height: 1.0,
        color: Colors.grey,
      ),
      itemCount: page.length,
    );
  }
}
