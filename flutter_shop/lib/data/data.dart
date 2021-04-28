import 'package:flutter_shop/models/brand_model.dart';
import 'package:flutter_shop/models/categorie_model.dart';
import 'package:flutter_shop/models/commentary.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/models/user.dart';

enum CategoryType { Home, Electronic, Book }

enum Brands { Apple, Samsung, Ikea, Bricorama }

Map<CategoryType, String> CategoriesName = {
  CategoryType.Electronic: 'Electronic',
  CategoryType.Home: 'Home',
  CategoryType.Book: 'Book'
};

List<ProductModel> getProducts() {
  List<ProductModel> products = [];
  ProductModel productModel = new ProductModel();
  //1
  productModel.productName = "Iphone 11";
  productModel.noOfRating = 4;
  productModel.imgUrl = "iphone11.PNG";
  productModel.rating = 4;
  productModel.price = 20;
  productModel.description="L'iPhone 11 est le modèle le plus accessible de la douzième génération du célèbre smartphone d'Apple. Successeur direct de l'iPhone XR, il dispose d'un écran LCD de 6,1 pouces, un SoC Apple A13 Bionic et un double capteur photo arrière.";
  Commentary comment = new Commentary();
  User user = new User("User 1");
  user.firstname = "John";
  user.lastname = "Doe";
  comment.user = user;
  comment.date = DateTime.now();
  comment.stars = 3;
  comment.comment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi turpis ligula, porta ut lacinia a, placerat quis libero. Vivamus commodo feugiat diam, a venenatis justo pharetra sit amet. Quisque ornare est ut felis egestas, ac placerat tortor fermentum. Sed imperdiet metus arcu, et maximus augue bibendum nec. Aenean faucibus mauris arcu, vitae pulvinar orci porttitor a. Fusce commodo imperdiet blandit. Nunc blandit tincidunt metus, nec vulputate sem. Donec rutrum est vitae metus faucibus, mattis volutpat ex varius. Morbi ut ex sodales urna lacinia placerat. Integer neque ante, lobortis in justo eget, molestie viverra massa. Pellentesque fringilla quis ante bibendum tincidunt.";
  productModel.commentaries = [comment];
  products.add(productModel);
  productModel = new ProductModel();
  //2
  productModel.productName = "Samsung S21";
  productModel.noOfRating = 4;
  productModel.imgUrl = "s21.PNG";
  productModel.rating = 4;
  productModel.price = 20;
  productModel.description="Le Samsung Galaxy S21 est le porte-étendard de la marque, succédant à la gamme S20. Il est équipé d'un SoC Exynos 2100 (gravé en 5 nm), d'une batterie de 4000 mAh et de 3 capteurs photo : le principal à 12 mégapixels, un capteur de 12 mégapixels et un téléobjectif de 64 mégapixels.";
  comment = new Commentary();
  user = new User("User 1");
  user.firstname = "John";
  user.lastname = "Doe";
  comment.user = user;
  comment.date = DateTime.now();
  comment.stars = 3;
  comment.comment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi turpis ligula, porta ut lacinia a, placerat quis libero. Vivamus commodo feugiat diam, a venenatis justo pharetra sit amet. Quisque ornare est ut felis egestas, ac placerat tortor fermentum. Sed imperdiet metus arcu, et maximus augue bibendum nec. Aenean faucibus mauris arcu, vitae pulvinar orci porttitor a. Fusce commodo imperdiet blandit. Nunc blandit tincidunt metus, nec vulputate sem. Donec rutrum est vitae metus faucibus, mattis volutpat ex varius. Morbi ut ex sodales urna lacinia placerat. Integer neque ante, lobortis in justo eget, molestie viverra massa. Pellentesque fringilla quis ante bibendum tincidunt.";
  productModel.commentaries = [comment];
  products.add(productModel);
  productModel = new ProductModel();
  //3
  productModel.productName = "KALLAX";
  productModel.noOfRating = 4;
  productModel.imgUrl = "kallax.PNG";
  productModel.rating = 4;
  productModel.price = 20;
  productModel.description = "KALLAX est une étagère de rangement élégante et simple qui permet de ranger beaucoup de choses. Placez-le au sol, fixez-le sur un mur ou transformez-le en bureau pour transformer votre espace de vie. Les étagères KALLAX sont disponibles en différentes tailles et couleurs et sont faciles à personnaliser avec une sélection de portes, paniers, séparateurs et plus encore.";
  comment = new Commentary();
  user = new User("User 4");
  user.firstname = "John";
  user.lastname = "Doe";
  comment.user = user;
  comment.date = DateTime.now();
  comment.stars = 3;
  comment.comment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi turpis ligula, porta ut lacinia a, placerat quis libero. Vivamus commodo feugiat diam, a venenatis justo pharetra sit amet. Quisque ornare est ut felis egestas, ac placerat tortor fermentum. Sed imperdiet metus arcu, et maximus augue bibendum nec. Aenean faucibus mauris arcu, vitae pulvinar orci porttitor a. Fusce commodo imperdiet blandit. Nunc blandit tincidunt metus, nec vulputate sem. Donec rutrum est vitae metus faucibus, mattis volutpat ex varius. Morbi ut ex sodales urna lacinia placerat. Integer neque ante, lobortis in justo eget, molestie viverra massa. Pellentesque fringilla quis ante bibendum tincidunt.";
  productModel.commentaries = [comment];
  products.add(productModel);
  productModel = new ProductModel();
  //4
  productModel.productName = "BERGSHULT";
  productModel.noOfRating = 4;
  productModel.imgUrl = "BERGSHULT.PNG";
  productModel.rating = 4;
  productModel.price = 20;
  productModel.description="Cette étagère murale vous aide à profiter de l'espace libre sur les murs. Dans la chambre, dans le salon ou dans la salle à manger, pour ranger ou pour exposer, elle répond à tous vos besoins.";
  comment = new Commentary();
  user = new User("User 1");
  user.firstname = "John";
  user.lastname = "Doe";
  comment.user = user;
  comment.date = DateTime.now();
  comment.stars = 3;
  comment.comment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi turpis ligula, porta ut lacinia a, placerat quis libero. Vivamus commodo feugiat diam, a venenatis justo pharetra sit amet. Quisque ornare est ut felis egestas, ac placerat tortor fermentum. Sed imperdiet metus arcu, et maximus augue bibendum nec. Aenean faucibus mauris arcu, vitae pulvinar orci porttitor a. Fusce commodo imperdiet blandit. Nunc blandit tincidunt metus, nec vulputate sem. Donec rutrum est vitae metus faucibus, mattis volutpat ex varius. Morbi ut ex sodales urna lacinia placerat. Integer neque ante, lobortis in justo eget, molestie viverra massa. Pellentesque fringilla quis ante bibendum tincidunt.";
  productModel.commentaries = [comment];
  products.add(productModel);
  productModel = new ProductModel();
  //5
  productModel.productName = "Tintin au pays des soviets";
  productModel.noOfRating = 4;
  productModel.imgUrl = "soviet.jpg";
  productModel.rating = 4;
  productModel.price = 20;
  productModel.description="Nous sommes le 10 janvier 1929, à Bruxelles. Accompagné de son chien Milou, un tout jeune reporter monte dans le train à destination de Moscou. Pour Tintin, c'est le début d'une grande aventure. Pour Hergé, c'est le vrai début de sa carrière. Les Aventures de Tintin, reporter du Petit Vingtième au pays des Soviets paraîtront sous forme d'album en 1930. Cette année marque la naissance d'un mythe qui n'est pas près de s'éteindre, et les premiers signes d'une troublante confrontation entre la fiction et la réalité.";
  comment = new Commentary();
  user = new User("User 3");
  user.firstname = "John";
  user.lastname = "Doe";
  comment.user = user;
  comment.date = DateTime.now();
  comment.stars = 3;
  comment.comment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi turpis ligula, porta ut lacinia a, placerat quis libero. Vivamus commodo feugiat diam, a venenatis justo pharetra sit amet. Quisque ornare est ut felis egestas, ac placerat tortor fermentum. Sed imperdiet metus arcu, et maximus augue bibendum nec. Aenean faucibus mauris arcu, vitae pulvinar orci porttitor a. Fusce commodo imperdiet blandit. Nunc blandit tincidunt metus, nec vulputate sem. Donec rutrum est vitae metus faucibus, mattis volutpat ex varius. Morbi ut ex sodales urna lacinia placerat. Integer neque ante, lobortis in justo eget, molestie viverra massa. Pellentesque fringilla quis ante bibendum tincidunt.";
  productModel.commentaries = [comment];
  products.add(productModel);
  productModel = new ProductModel();
  //6
  productModel.productName = "Le sorceleur (T7): La Dame du lac";
  productModel.noOfRating = 4;
  productModel.imgUrl = "sorceleur.jpg";
  productModel.rating = 4;
  productModel.price = 57;
  productModel.description="Tandis que Yennefer est retenue prisonnière et que Geralt passe l'hiver en compagnie de la magicienne Fringilla aux charmants artifices, Ciri est projetée dans un monde parallèle en pénétrant dans la tour de l'Hirondelle. Désormais sous la coupe de l'elfe Avallac'h, elle ne peut espérer la liberté que si elle accepte de porter l'enfant du roi des Aulnes. La jeune fille parviendra-t-elle à s'enfuir pour voler au secours de ses amis ?";
  comment = new Commentary();
  user = new User("User 2");
  user.firstname = "John";
  user.lastname = "Doe";
  comment.user = user;
  comment.date = DateTime.now();
  comment.stars = 3;
  comment.comment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi turpis ligula, porta ut lacinia a, placerat quis libero. Vivamus commodo feugiat diam, a venenatis justo pharetra sit amet. Quisque ornare est ut felis egestas, ac placerat tortor fermentum. Sed imperdiet metus arcu, et maximus augue bibendum nec. Aenean faucibus mauris arcu, vitae pulvinar orci porttitor a. Fusce commodo imperdiet blandit. Nunc blandit tincidunt metus, nec vulputate sem. Donec rutrum est vitae metus faucibus, mattis volutpat ex varius. Morbi ut ex sodales urna lacinia placerat. Integer neque ante, lobortis in justo eget, molestie viverra massa. Pellentesque fringilla quis ante bibendum tincidunt.";
  productModel.commentaries = [comment];
  products.add(productModel);
  productModel = new ProductModel();
  return products;
}

List<BrandModel> getBrands() {
  List<BrandModel> brands = [];
  BrandModel brand = new BrandModel();
  brand.brandName = "Appel";
  brand.category = CategoryType.Electronic;
  brands.add(brand);
  brand.brandName = "Samsung";
  brand.category = CategoryType.Electronic;
  brands.add(brand);
  brand.brandName = "Ikea";
  brand.category = CategoryType.Home;
  brands.add(brand);
  brand.brandName = "Bricorama";
  brand.category = CategoryType.Home;
  brands.add(brand);

  return brands;
}

List<CategorieModel> getCategories() {
  List<CategorieModel> categories = [];
  CategorieModel categorieModel = new CategorieModel();
  //1
  categorieModel.category = CategoryType.Electronic;
  categorieModel.categoryLabel = CategoriesName[categorieModel.category];
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "electronic.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //2
  categorieModel.category = CategoryType.Home;
  categorieModel.categoryLabel = CategoriesName[categorieModel.category];
  categorieModel.color1 = "0xff50F9B4";
  categorieModel.color2 = "0xff38CAE9";
  categorieModel.imgAssetPath = "home.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //3
  categorieModel.category = CategoryType.Book;
  categorieModel.categoryLabel = CategoriesName[categorieModel.category];
  categorieModel.color1 = "0xffFFB397";
  categorieModel.color2 = "0xffF46AA0";
  categorieModel.imgAssetPath = "Lifestyle.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  return categories;
}
