import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/models/commentary.dart';

class CommentaryWidget extends StatefulWidget {
  CommentaryWidget({Key key, this.commentary}) : super(key: key);
  final Commentary commentary;
  @override
  _CommentaryWidgetState createState() => _CommentaryWidgetState();
}

class _CommentaryWidgetState extends State<CommentaryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500,
        child: Card(
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Wrap(children: [
                  Row(children: [
                    Text(widget.commentary.user.username),
                    Text(":     "),
                    Text(widget.commentary.date.day.toString() + '/'),
                    Text(widget.commentary.date.month.toString() + '/'),
                    Text(widget.commentary.date.year.toString()),
                    Container(
                        margin: EdgeInsets.fromLTRB(50, 20, 0, 20),
                        child: Row(children: [
                          for (var i = 0; i < 5; i++)
                            (() {
                              if (widget.commentary.stars > i) {
                                return Icon(Icons.star);
                              }
                              return Icon(Icons.star_border);
                            }())
                        ]))
                  ]),
                  Text(widget.commentary.comment)
                ]))));
  }
}
