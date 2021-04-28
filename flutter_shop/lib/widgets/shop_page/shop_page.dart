import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/data/data.dart';
import 'package:flutter_shop/models/brand_model.dart';
import 'package:flutter_shop/models/categorie_model.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/widgets/category.dart';
import 'package:flutter_shop/widgets/item.dart';
import 'package:flutter_shop/widgets/navigation_tab/navigation_tab.dart';
import 'package:flutter_shop/widgets/sidenav/sidenav.dart';

class ShopPageWidget extends StatefulWidget {
  ShopPageWidget({Key key, this.navigation}) : super(key: key);
  final NavigationTabWidgetState navigation;
  List<ProductModel> products = [];
  List<CategorieModel> categories = [];
  List<BrandModel> brands = [];

  List<ProductModel> filteredData = [];

  @override
  ShopPageWidgetState createState() => ShopPageWidgetState();
}

class ShopPageWidgetState extends State<ShopPageWidget> {
  List<CategoryType> selectedCategories = [];

  @override
  void initState() {
    super.initState();
    widget.products = getProducts();
    widget.categories = getCategories();
    widget.brands = getBrands();
  }

  void updateFilters(Filter filter, dynamic newValue) {
    filter.value = newValue;
    if (newValue) {
      selectedCategories.add(filter.category);
    } else {
      selectedCategories.remove(filter.category);
    }
    setState(() {
      for (var i = 0; i < widget.products.length; i++) {
        Iterable<CategoryType> impactedProducts = selectedCategories
            .where((element) => element == widget.products[i].category)
            .toList();
        if (impactedProducts.length > 0 &&
            !widget.filteredData.contains(widget.products[i])) {
          widget.filteredData.add(widget.products[i]);
        } else {
          if (widget.filteredData.contains(widget.products[i])) {
            widget.filteredData.remove(widget.products[i]);
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          elevation: 0,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: 'Filter',
              );
            },
          ),
        ),
        drawer: Drawer(
            child: SidenavWidget(
          categories: widget.categories,
          products: widget.products,
          parentWidget: this,
        )),
        body: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: GridView.count(
                crossAxisCount: 5,
                scrollDirection: Axis.vertical,
                crossAxisSpacing: 50,
                mainAxisSpacing: 30,
                children: List.generate(
                    (() {
                      if (widget.filteredData.length != 0) {
                        return widget.filteredData.length;
                      } else {
                        return widget.products.length;
                      }
                    }()),
                    (index) => (() {
                          if (widget.filteredData.length != 0) {
                            return GestureDetector(
                                onTap: () {
                                  widget.navigation.productSelected(
                                      widget.filteredData[index]);
                                },
                                child: ItemDisplayWidget(
                                    product: widget.filteredData[index]));
                          } else {
                            return GestureDetector(
                                onTap: () {
                                  widget.navigation.productSelected(
                                      widget.products[index]);
                                },
                                child: ItemDisplayWidget(
                                    product: widget.products[index]));
                          }
                        }())))));
  }
}
