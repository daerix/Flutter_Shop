import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/models/commentary.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/models/user.dart';
import 'package:flutter_shop/widgets/commentary_page/clickable_star.dart';
import 'package:flutter_shop/widgets/commentary_page/commentary.dart';

class CommentaryPageWidget extends StatefulWidget {
  CommentaryPageWidget({Key key, this.product, this.currentUser})
      : super(key: key);
  int stars = 3;
  User currentUser;
  ProductModel product;
  @override
  CommentaryPageWidgetState createState() => CommentaryPageWidgetState();
}

class CommentaryPageWidgetState extends State<CommentaryPageWidget> {
  TextEditingController comment = new TextEditingController();

  void sendComment() {
    if (comment.text.isEmpty) {
      return;
    }
    setState(() {
      Commentary commentObject = new Commentary();
      commentObject.comment = comment.text;
      commentObject.date = DateTime.now();
      commentObject.stars = widget.stars;
      commentObject.user = widget.currentUser;
      widget.product.commentaries.add(commentObject);
      comment.text = "";
      widget.stars = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Spacer(),
      Column(children: [
        Expanded(
            flex: 8,
            child: Container(
                width: 500,
                child: SingleChildScrollView(
                    child: Column(children: [
                  for (var comment in widget.product.commentaries)
                    CommentaryWidget(commentary: comment)
                ])))),
        Expanded(
            flex: 2,
            child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                width: 500,
                child: Column(children: [
                  TextFormField(
                    controller: comment,
                    decoration: InputDecoration(hintText: "Enter your comment"),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(children: [
                        Expanded(
                            child: Row(
                          children: [
                            for (var star in [1, 2, 3, 4, 5])
                              ClickableStarWidget(
                                parentWidget: this,
                                position: star,
                                clickable: true,
                              )
                          ],
                        )),
                        ElevatedButton(
                            child: Text('Send comment'), onPressed: sendComment)
                      ]))
                ])))
      ]),
      Spacer()
    ]));
  }
}
