import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_shop/data/data.dart';
import 'package:flutter_shop/models/brand_model.dart';
import 'package:flutter_shop/models/categorie_model.dart';
import 'package:flutter_shop/models/product_model.dart';
import 'package:flutter_shop/widgets/shop_page/shop_page.dart';
import 'package:flutter_shop/widgets/sidenav/filter_header.dart';

enum FilterType { checkbox, slider, text }

class Filter {
  String label;
  FilterType type;
  Object value;
  CategoryType category;
  Filter({this.label, this.type, this.value, this.category});
}

class FilterCategory {
  String label;
  List<Filter> filters;

  FilterCategory({this.label, this.filters});
}

class SidenavWidget extends StatefulWidget {
  SidenavWidget(
      {Key key, this.categories, this.products, this.brands, this.parentWidget})
      : super(key: key);
  List<FilterCategory> filters;
  List<CategorieModel> categories;
  List<ProductModel> products;
  List<BrandModel> brands;

  ShopPageWidgetState parentWidget;

  @override
  SidenavWidgetState createState() => SidenavWidgetState();
}

class SidenavWidgetState extends State<SidenavWidget> {
  @override
  void initState() {
    if (widget.filters == null) {
      widget.filters = [];
    }
    if (widget.filters.length != 0) {
      return;
    }

    FilterCategory filterCategory =
        new FilterCategory(label: "Type", filters: []);
    widget.categories.forEach((category) {
      filterCategory.filters.add(new Filter(
          label: category.categoryLabel,
          type: FilterType.checkbox,
          value: false,
          category: category.category));
    });
    widget.filters.add(filterCategory);
    filterCategory = new FilterCategory(label: "Price", filters: []);
    filterCategory.filters
        .add(new Filter(label: "", type: FilterType.slider, value: 50));
    widget.filters.add(filterCategory);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        for (var filterCategory in widget.filters)
          Column(
            children: [
              FilterHeaderWidget(label: filterCategory.label),
              for (var filter in filterCategory.filters)
                Container(
                    padding: (() {
                      if (filter.type == FilterType.checkbox) {
                        return EdgeInsets.fromLTRB(20, 0, 0, 0);
                      } else if (filter.type == FilterType.slider) {
                        return EdgeInsets.fromLTRB(0, 0, 0, 0);
                      }
                    }()),
                    child: Row(
                        mainAxisAlignment: (() {
                          if (filter.type == FilterType.checkbox) {
                            return MainAxisAlignment.start;
                          } else if (filter.type == FilterType.slider) {
                            return MainAxisAlignment.center;
                          }
                        }()),
                        children: [
                          (() {
                            if (filter.type == FilterType.checkbox) {
                              return Checkbox(
                                value: filter.value,
                                onChanged: (newValue) => widget.parentWidget
                                    .updateFilters(filter, newValue),
                              );
                            } else if (filter.type == FilterType.slider) {
                              return Slider(
                                  min: 0,
                                  max: 100,
                                  divisions: 10,
                                  label: (() {
                                    return filter.value.toString();
                                  }()),
                                  value: filter.value,
                                  onChanged: (newValue) => widget.parentWidget
                                      .updateFilters(filter, newValue));
                            }
                          }()),
                          Text(filter.label)
                        ]))
            ],
          )
      ],
    ));
  }
}
