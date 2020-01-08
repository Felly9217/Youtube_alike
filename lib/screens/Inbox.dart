import 'package:flutter/material.dart';
import 'package:youtube_alike/utilities/ListFiles.dart';
import 'package:youtube_alike/widgets/InboxWidget.dart';


class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTabMenu(page: inboxPageData);
  }
}
