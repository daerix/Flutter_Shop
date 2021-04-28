import 'package:flutter_shop/data/data.dart';
import 'package:flutter_shop/models/brand_model.dart';
import 'package:flutter_shop/models/commentary.dart';

class ProductModel{
  int price;
  String productName;
  int rating;
  String imgUrl;
  int noOfRating;
  String description;
  CategoryType category;
  Brands brand;
  List<Commentary> commentaries;

  ProductModel({this.productName,this.imgUrl,this.price,this.rating,this.noOfRating,this.description});
}