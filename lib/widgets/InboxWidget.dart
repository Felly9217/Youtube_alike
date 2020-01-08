import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';

class InboxTabMenu extends StatelessWidget {
  final List<YoutubeData> page;

  InboxTabMenu({this.page});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    page[index].avatar),
              ),
              title: Text('${page[index].username} uploaded: ${page[index].title}'),
              subtitle: Text(page[index].ageOfVideo),
              trailing: Container(
                width: 100.0,
                child: Row(
                  children: <Widget>[
                    Image(
                      fit: BoxFit.fitHeight,
                      height: 75.0,
                      width: 75.0,
                      image: NetworkImage(page[index].thumbNail),),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 10.0,
        ),
        itemCount: page.length,);
  }
}

