import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterHeaderWidget extends StatefulWidget {
  FilterHeaderWidget({Key key, this.label}) : super(key: key);
  final String label;
  @override
  FilterHeaderWidgetState createState() => FilterHeaderWidgetState();
}

class FilterHeaderWidgetState extends State<FilterHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
        child: Text(
          widget.label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22),
        ));
  }
}
