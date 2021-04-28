import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_shop/models/commentary.dart';
import 'package:flutter_shop/models/user.dart';
import 'package:flutter_shop/widgets/Guest.dart';
import 'package:flutter_shop/data/data.dart';
import 'package:flutter_shop/models/categorie_model.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/resources/colors.dart';
import 'package:flutter_shop/widgets/category.dart';
import 'package:flutter_shop/widgets/item.dart';
import 'package:flutter_shop/widgets/cart.dart';

import 'models/product_model.dart';

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
  List<ProductModel> cart = [];
  @override
  void initState() {
    super.initState();
    products = getProducts();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 36.0,
                  ),
                  if (cart.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          cart.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                if (cart.isNotEmpty)
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cart(cart),
                    ),
                  );
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           
            SizedBox(
              height: 40,
            ),

            /// Best Selling
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Our Product",
                    style: TextStyle(color: Colors.black87, fontSize: 22),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 240,
              padding: EdgeInsets.only(left: 22),
              child: ListView.builder(
                  itemCount: products.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ItemDisplayWidget(product: products[index]);
                  }),
            ),

            ///Categorie
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "Categories",
                style: TextStyle(color: Colors.black87, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 240,
              padding: EdgeInsets.only(left: 22),
              child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryDisplayWidget(category: categories[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
