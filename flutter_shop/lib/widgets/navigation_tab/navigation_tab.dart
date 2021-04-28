import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/models/user.dart';
import 'package:flutter_shop/widgets/cart.dart';
import 'package:flutter_shop/widgets/commentary_page/commentary_page.dart';
import 'package:flutter_shop/widgets/product_page/product_page_widget.dart';
import 'package:flutter_shop/widgets/shop_page/shop_page.dart';

class NavigationTabWidget extends StatefulWidget {
  NavigationTabWidget({Key key}) : super(key: key);

  int tabSelected = 0;
  @override
  NavigationTabWidgetState createState() => NavigationTabWidgetState();
}

class NavigationTabWidgetState extends State<NavigationTabWidget> {
  ProductModel selectedProduct;
  List<ProductModel> cart = [];

  void goTo(int tab) {
    setState(() {
      widget.tabSelected = tab;
    });
  }

  void productSelected(ProductModel product) {
    setState(() {
      widget.tabSelected = 2;
      selectedProduct = product;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Shop"),
          centerTitle: true,
          elevation: 0,
          actions: [
            ElevatedButton(onPressed: () => goTo(0), child: Text("Shop")),
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
                  goTo(1);
                },
              ),
            )
          ],
        ),
        body: Container(
          child: (() {
            if (widget.tabSelected == 0) {
              return Container(child: ShopPageWidget(navigation: this));
            } else if (widget.tabSelected == 1) {
              return Container(child: Cart(cart));
            } else if (widget.tabSelected == 2) {
              return ProductPageWidget(
                product: selectedProduct, navigation: this,
              );
            } else if (widget.tabSelected == 3) {
              User user = new User("Test");
              user.firstname = "Test";
              user.lastname = "User";
              return CommentaryPageWidget(product: selectedProduct, currentUser: user,)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ;
            }
          }()),
        ));
  }
}
