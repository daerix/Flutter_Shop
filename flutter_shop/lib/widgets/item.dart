import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/widgets/commentary_page/clickable_star.dart';

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
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              offset: Offset.zero,
              blurRadius: 2,
              spreadRadius: 2)
        ]),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(widget.product.imgUrl),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter
                      )),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      height: 25,
                      width: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(colors: [
                            const Color(0xff8EA2FF).withOpacity(0.5),
                            const Color(0xff557AC7).withOpacity(0.5)
                          ])),
                      child: Text(
                        widget.product.price.toString() + "\$",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (var star = 0;
                              star < widget.product.noOfRating;
                              star++)
                            Icon(Icons.star),
                          for (var star = widget.product.noOfRating;
                              star < 5;
                              star++)
                            Icon(Icons.star_border)
                        ],
                      ),
                    )
                  ]),
                  Spacer(),
                  Row(
                    children: [
                      Text(widget.product.productName,
                          textAlign: TextAlign.left),
                      Spacer()
                    ],
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 300,
                height: 100,
                child: SingleChildScrollView(
                    child: Text(widget.product.description)))
          ],
        ));
  }
}
