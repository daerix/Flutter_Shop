import 'package:flutter_shop/data/data.dart';

class CategorieModel{
  CategoryType category; // name of the categorie
  String imgAssetPath; // url of the image
  String color1;
  String color2;
  String categoryLabel;
  CategorieModel({this.category,this.imgAssetPath,this.color1,this.color2, this.categoryLabel});
}