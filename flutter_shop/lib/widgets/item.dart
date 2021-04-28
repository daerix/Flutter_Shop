import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product_model.dart';

class ItemDisplayWidget extends StatefulWidget {
  ItemDisplayWidget({Key key, this.product}) : super(key: key);

  final ProductModel product;

  @override
  ItemDisplayWidgetState createState() => ItemDisplayWidgetState();
}

class ItemDisplayWidgetState extends State<ItemDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "productImage.jfif",
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 25,
                    width: 45,
                    margin: EdgeInsets.only(left: 8, top: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: LinearGradient(colors: [
                          const Color(0xff8EA2FF).withOpacity(0.5),
                          const Color(0xff557AC7).withOpacity(0.5)
                        ])),
                    child: Text(
                      widget.product.price.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Text(widget.product.productName),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.product.noOfRating.toString(),
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ],
        ));
  }
}
