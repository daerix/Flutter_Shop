import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/navigation_tab/navigation_tab.dart';

class ShopPageWidget extends StatefulWidget {
  ShopPageWidget({Key key}) : super(key: key);
  @override
  ShopPageWidgetState createState() => ShopPageWidgetState();
}

class ShopPageWidgetState extends State<ShopPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return NavigationTabWidget();
          }),
        );
      },
      child: Text("GetBack"),
    ));
  }
}
