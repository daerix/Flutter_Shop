import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/widgets/navigation_tab/navigation_tab.dart';

class ProductPageWidget extends StatefulWidget {
  ProductPageWidget({Key key, this.product, this.navigation}) : super(key: key);
  final NavigationTabWidgetState navigation;
  ProductModel product;

  @override
  ProductPageWidgetWidgetState createState() => ProductPageWidgetWidgetState();
}

class ProductPageWidgetWidgetState extends State<ProductPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(50, 20, 50, 30),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(widget.product.imgUrl),
                        fit: BoxFit.fitHeight)),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        widget.product.productName,
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      Row(children: [
                        for (var i = 0; i < widget.product.rating; i++)
                          Icon(Icons.star),
                        for (var i = widget.product.rating; i < 5; i++)
                          Icon(Icons.star_border),
                      ])
                    ]),
                    Spacer()
                  ],
                )),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                widget.product.description,
                style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            )),
            Container(
                margin: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width / 10,
                    20,
                    MediaQuery.of(context).size.width / 10,
                    0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                textStyle: TextStyle(color: Colors.white)),
                            onPressed: () {
                              widget.navigation.goTo(3);
                            },
                            child: Text("Comment"))),
                    Spacer(),
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                textStyle: TextStyle(color: Colors.white)),
                            onPressed: () {
                              widget.navigation.cart.add(widget.product);
                            },
                            child: Text("Add to basket"))),
                  ],
                ))
          ],
        ));
  }
}
