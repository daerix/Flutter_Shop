import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/models/categorie_model.dart';

class CategoryDisplayWidget extends StatefulWidget {
  CategoryDisplayWidget({Key key, this.category}) : super(key: key);

  final CategorieModel category;

  @override
  CategoryDisplayWidgetState createState() => CategoryDisplayWidgetState();
}

class CategoryDisplayWidgetState extends State<CategoryDisplayWidget> {
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
                gradient: LinearGradient(colors: [
                  Color(int.parse(widget.category.color1)),
                  Color(int.parse(widget.category.color2))
                ]),
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
            child: Container(
                child: Image.asset(
              widget.category.imgAssetPath,
            )),
          ),
          SizedBox(
            height: 8,
          ),
          Text(widget.category.categoryLabel),
        ],
      ),
    );
  }
}
