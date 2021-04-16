import 'package:flutter_shop/models/categorie_model.dart';
import 'package:flutter_shop/models/product_model.dart';

List<ProductModel> getProducts(){
  List<ProductModel> products = new List();
  ProductModel productModel = new ProductModel();
  //1
  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  productModel.description="Produit 1";
  products.add(productModel);
  productModel = new ProductModel();
  //2
  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  productModel.description="Produit 2";
  products.add(productModel);
  productModel = new ProductModel();
  //3
  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  productModel.description = "Produit 3";
  products.add(productModel);
  productModel = new ProductModel();
  //4
  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  productModel.description="Produit 4";
  products.add(productModel);
  productModel = new ProductModel();
  //5
  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  productModel.description="Produit 5";
  products.add(productModel);
  productModel = new ProductModel();
  //6
  productModel.productName = "Special  gift card";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 57;
  productModel.description="Produit 6";
  products.add(productModel);
  productModel = new ProductModel();
  return products;
}
List<CategorieModel> getCategories(){
  List<CategorieModel> categories = new List();
  CategorieModel categorieModel = new CategorieModel();
  //1
  categorieModel.categorieName = "Electronic";
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "electronic.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //2
  categorieModel.categorieName = "Home ";
  categorieModel.color1 = "0xff50F9B4";
  categorieModel.color2 = "0xff38CAE9";
  categorieModel.imgAssetPath = "home.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //3
  categorieModel.categorieName = "LifeStyle";
  categorieModel.color1 = "0xffFFB397";
  categorieModel.color2 = "0xffF46AA0";
  categorieModel.imgAssetPath = "Lifestyle.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();


  return categories;
}