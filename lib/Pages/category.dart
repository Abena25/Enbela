import 'package:flutter/material.dart';
class CategoryList extends StatefulWidget {
  final int index;
  final String name, image;

  CategoryList(this.index,this.image,this.name);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}