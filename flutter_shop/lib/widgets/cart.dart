import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product_model.dart';

import '../models/product_model.dart';

class Cart extends StatefulWidget {
  final List<ProductModel> cart;

  Cart(this.cart);

  @override
  _CartState createState() => _CartState(this.cart);
}

class _CartState extends State<Cart> {
  _CartState(this.cart);

  List<ProductModel> cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            var item = cart[index];
            return Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              child: Card(
                elevation: 4.0,
                child: ListTile(
                  title: Text(item.productName),
                  trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          cart.remove(item);
                        });
                      }),
                ),
              ),
            );
          }),
    );
  }
}