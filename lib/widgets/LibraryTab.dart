import 'package:flutter/material.dart';

class LibraryListScroll extends StatelessWidget {
  const LibraryListScroll({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 170,
          height: 80.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.ytimg.com/vi/PPIN_JU-V58/hqdefault.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(

            child: Text('3:42'),
          ),
        ),
        Container(
          width: 200.0,
          child: ListTile(
            title: Text('The Bucks are on pace to have...'),
            subtitle: Text('ESPN'),
            trailing: Container(
              width: 15.0,
              alignment: Alignment(1.0, -1.0),
              child: Icon(Icons.more_vert),
            ),
          ),
        ),
      ],
    );
  }
}
