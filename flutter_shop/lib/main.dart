import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_shop/models/commentary.dart';
import 'package:flutter_shop/models/user.dart';
import 'package:flutter_shop/widgets/Guest.dart';
import 'package:flutter_shop/data/data.dart';
import 'package:flutter_shop/models/categorie_model.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/resources/colors.dart';

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
      home: GuestScreen(),
    );
  }
}

class ProductTile extends StatelessWidget {
  final int priceInDollars;
  final String productName;
  final int rating;
  final String imgUrl;
  final int noOfRating;
  ProductTile({this.priceInDollars, this.imgUrl, this.rating,this.productName, this.noOfRating});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset("productImage.jfif",height: 150,fit: BoxFit.cover,) ,
                Container(
                  height: 25,
                  width: 45,
                  margin: EdgeInsets.only(left: 8,top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6) ,
                      gradient: LinearGradient(
                          colors: [const Color(0xff8EA2FF).withOpacity(0.5), const Color(0xff557AC7).withOpacity(0.5)]
                      )
                  ),
                  child: Text("\$$priceInDollars",style: TextStyle(
                      color: Colors.white
                  ),
                  ),
                ),
              ],
            ),
          ),
          Text(productName),
          SizedBox(height: 8,),
          Row(
            children: <Widget>[
              SizedBox(width: 10,),
              Text("($noOfRating)", style: TextStyle(
                  color: textGrey,
                  fontSize: 12
              ),)
            ],
          ),
        ],
      ),
    );
  }
}

class CategorieTile extends StatelessWidget {
  final String categorieName;
  final String imgAssetPath;
  final String color1;
  final String color2;
  CategorieTile({this.imgAssetPath,this.color2,this.color1,this.categorieName});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 65,
            width: 110,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(int.parse(color1)),Color(int.parse(color2))]
                ),
                borderRadius: BorderRadius.circular(8)
            ),
            padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 8),
            child: Container(
                child: Image.asset(imgAssetPath,)),
          ),
          SizedBox(height: 8,),
          Text(categorieName),
        ],
      ),
    );
  }
}