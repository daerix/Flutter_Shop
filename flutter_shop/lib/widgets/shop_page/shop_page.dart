import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/navigation_tab/navigation_tab.dart';
import 'package:flutter_shop/widgets/sidenav/sidenav.dart';

class ShopPageWidget extends StatefulWidget {
  ShopPageWidget({Key key, this.navigation}) : super(key: key);
  final NavigationTabWidgetState navigation;
  @override
  ShopPageWidgetState createState() => ShopPageWidgetState();
}

class ShopPageWidgetState extends State<ShopPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          elevation: 0,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: 'Filter',
              );
            },
          ),
        ),
        body: Container(
          child: Text(""),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: SidenavWidget()
        ));
  }
}
