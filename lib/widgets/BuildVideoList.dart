import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';

class BuildVideoList extends StatelessWidget {
  const BuildVideoList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index){
        return Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(homePageData[index].thumbNail),
                    fit: BoxFit.cover
                  )
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              leading: CircleAvatar(backgroundImage: NetworkImage(homePageData[index].avatar),),
              title: Text(homePageData[index].title),
              subtitle: Text('${homePageData[index].username} . ${homePageData[index].views} . ${homePageData[index].ageOfVideo}'),
              trailing: Icon(Icons.more_vert),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => Divider(
        height: 1.0,
        color: Colors.grey,
      ),
      itemCount: homePageData.length,
    );
  }
}