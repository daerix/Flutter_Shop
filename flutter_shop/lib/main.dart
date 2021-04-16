import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_shop/models/commentary.dart';
import 'package:flutter_shop/models/user.dart';
import 'package:flutter_shop/widgets/commentary_page/commentary_page.dart';

List<Commentary> commentaries;
User currentUser;
void main() {
  commentaries = [];
  currentUser = new User("Virgile Sassano");
  Random random = Random();
  for (var i = 0; i < 2; i++) {
    Commentary comment = new Commentary();
    comment.comment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae tellus commodo, tincidunt urna sed, ultrices nunc. Aliquam sed nibh felis. Mauris odio turpis, aliquet eu sem ut, iaculis interdum diam. Donec interdum viverra nisi, eu finibus leo cursus sit amet. Ut nec ipsum efficitur, bibendum nisl nec, ultrices neque. Curabitur consequat ullamcorper ligula. Aliquam eu metus libero. Duis rutrum a turpis at molestie. Sed tempor ipsum id viverra lobortis. Sed eu mollis mauris. Aliquam lectus purus, volutpat id ligula eget, tincidunt laoreet erat. Cras malesuada accumsan pharetra. Praesent nibh eros, faucibus vitae enim id, ullamcorper luctus ex.";
    comment.user = new User("User " + i.toString());
    comment.date = DateTime.now();
    comment.stars = random.nextInt(5);
    commentaries.add(comment);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CommentaryPageWidget(commentaries: commentaries, currentUser: currentUser),
    );
  }
}
