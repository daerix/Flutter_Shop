import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/shop_page/shop_page.dart';

class NavigationTabWidget extends StatefulWidget {
  NavigationTabWidget({Key key}) : super(key: key);
  @override
  NavigationTabWidgetState createState() => NavigationTabWidgetState();
}

class NavigationTabWidgetState extends State<NavigationTabWidget> {
  void goTo() {
    print("coucou");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Flutter Shop"),
      centerTitle: true,
      elevation: 0,
      leading: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                return ShopPageWidget();
              }),
            );
          },
          child: Text("Shop")),
      actions: [ElevatedButton(onPressed: goTo, child: Text("Basket"))],
    ));
  }
}
