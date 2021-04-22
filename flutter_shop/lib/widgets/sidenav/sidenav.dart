import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_shop/widgets/sidenav/filter_header.dart';

enum FilterType { checkbox, slider, text }

class Filter {
  String label;
  FilterType type;
  Object value;

  Filter({this.label, this.type, this.value});
}

class FilterCategory {
  String label;
  List<Filter> filters;

  FilterCategory({this.label, this.filters});
}

class SidenavWidget extends StatefulWidget {
  SidenavWidget({Key key}) : super(key: key);
  List<FilterCategory> filters = [];
  @override
  SidenavWidgetState createState() => SidenavWidgetState();
}

class SidenavWidgetState extends State<SidenavWidget> {
  @override
  void initState() {
    if (widget.filters.length != 0) {
      return;
    }
    FilterCategory filterCategory =
        new FilterCategory(label: "Type", filters: []);
    filterCategory.filters.add(
        new Filter(label: "House", type: FilterType.checkbox, value: false));
    filterCategory.filters.add(
        new Filter(label: "Hobbies", type: FilterType.checkbox, value: false));
    filterCategory.filters.add(
        new Filter(label: "Garden", type: FilterType.checkbox, value: false));
    widget.filters.add(filterCategory);
    filterCategory = new FilterCategory(label: "Brand", filters: []);
    filterCategory.filters.add(
        new Filter(label: "Samsung", type: FilterType.checkbox, value: false));
    filterCategory.filters.add(
        new Filter(label: "Nokia", type: FilterType.checkbox, value: false));
    filterCategory.filters.add(
        new Filter(label: "Appel", type: FilterType.checkbox, value: false));
    widget.filters.add(filterCategory);
    filterCategory = new FilterCategory(label: "Price", filters: []);
    filterCategory.filters
        .add(new Filter(label: "", type: FilterType.slider, value: 50));
    widget.filters.add(filterCategory);

    super.initState();
  }

  void changeFilterValue(Filter filter, dynamic newValue) {
    setState(() {
      filter.value = newValue;
    });
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
                                onChanged: (newValue) =>
                                    changeFilterValue(filter, newValue),
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
                                  onChanged: (newValue) =>
                                      changeFilterValue(filter, newValue));
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
