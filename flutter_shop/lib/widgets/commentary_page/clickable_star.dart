import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/commentary_page/commentary_page.dart';

class ClickableStarWidget extends StatefulWidget {
  ClickableStarWidget({Key key, this.parentWidget, this.position})
      : super(key: key);
  CommentaryPageWidgetState parentWidget;
  int position;
  @override
  _ClickableStarWidgetState createState() => _ClickableStarWidgetState();
}

class _ClickableStarWidgetState extends State<ClickableStarWidget> {
  void elementClicked() {
    widget.parentWidget.setState(() {
      widget.parentWidget.widget.stars = widget.position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: elementClicked,
        child: Container(
            child: (() {
          if (widget.parentWidget.widget.stars >= widget.position) {
            return Icon(Icons.star);
          }
          return Icon(Icons.star_border);
        }())));
  }
}
