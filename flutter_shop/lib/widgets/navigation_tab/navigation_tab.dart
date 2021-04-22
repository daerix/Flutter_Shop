import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/shop_page/shop_page.dart';

class NavigationTabWidget extends StatefulWidget {
  NavigationTabWidget({Key key}) : super(key: key);

  int tabSelected = 0;
  @override
  NavigationTabWidgetState createState() => NavigationTabWidgetState();
}

class NavigationTabWidgetState extends State<NavigationTabWidget> {
  void goTo(int tab) {
    setState(() {
      widget.tabSelected = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Shop"),
          centerTitle: true,
          elevation: 0,
          leading:
              ElevatedButton(onPressed: () => goTo(0), child: Text("Shop")),
          actions: [
            ElevatedButton(onPressed: () => goTo(1), child: Text("Basket"))
          ],
        ),
        body: Container(
          child: (() {
            if (widget.tabSelected == 0) {
              return Container(child: ShopPageWidget(navigation: this));
            }
            return Container(child: Text("Tab 2"));
          }()),
        ));
  }
}
