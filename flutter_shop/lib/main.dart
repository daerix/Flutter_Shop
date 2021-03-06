import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_shop/data/data.dart';
import 'package:flutter_shop/models/commentary.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/models/user.dart';
import 'package:flutter_shop/widgets/Guest.dart';
import 'package:flutter_shop/data/data.dart';
import 'package:flutter_shop/models/categorie_model.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/resources/colors.dart';
import 'package:flutter_shop/widgets/category.dart';
import 'package:flutter_shop/widgets/item.dart';
import 'package:flutter_shop/widgets/cart.dart';
import 'package:flutter_shop/widgets/shop_page/shop_page.dart';

import 'models/product_model.dart';
import 'package:flutter_shop/widgets/navigation_tab/navigation_tab.dart';
import 'package:flutter_shop/widgets/product_page/product_page_widget.dart';

List<Commentary> commentaries;
User currentUser;

void main() {
  commentaries = [];
  currentUser = new User("Virgile Sassano");
  Random random = Random();
  for (var i = 0; i < 2; i++) {
    Commentary comment = new Commentary();
    comment.comment =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae tellus commodo, tincidunt urna sed, ultrices nunc. Aliquam sed nibh felis. Mauris odio turpis, aliquet eu sem ut, iaculis interdum diam. Donec interdum viverra nisi, eu finibus leo cursus sit amet. Ut nec ipsum efficitur, bibendum nisl nec, ultrices neque. Curabitur consequat ullamcorper ligula. Aliquam eu metus libero. Duis rutrum a turpis at molestie. Sed tempor ipsum id viverra lobortis. Sed eu mollis mauris. Aliquam lectus purus, volutpat id ligula eget, tincidunt laoreet erat. Cras malesuada accumsan pharetra. Praesent nibh eros, faucibus vitae enim id, ullamcorper luctus ex.";
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ProductModel> products = [];
  List<CategorieModel> categories = [];
  @override
  void initState() {
    super.initState();
    products = getProducts();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GuestScreen()
    );
  }
}