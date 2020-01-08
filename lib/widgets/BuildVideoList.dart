import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/utilities/constants.dart';

class BuildVideoList extends StatelessWidget {

  BuildVideoList({@required this.page});

  final List<YoutubeData> page;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        return Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(page[index].thumbNail),
                    fit: BoxFit.cover
                  )
              ),
            ),
            Container(
              decoration: kBorderDecoration,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                leading: CircleAvatar(backgroundImage: NetworkImage(page[index].avatar),),
                title: Text(page[index].title),
                subtitle: Text('${page[index].username} . ${page[index].views} . ${page[index].ageOfVideo}'),
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