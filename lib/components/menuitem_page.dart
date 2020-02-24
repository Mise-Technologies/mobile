import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/components/dish_tile.dart';
import 'package:moPass/models/dish.dart';

class MenuItemPage extends StatefulWidget {
  final List<Dish> dishes;

  MenuItemPage(this.dishes);

  @override
  _MenuItemPageState createState() => new _MenuItemPageState();
}

class _MenuItemPageState extends State<MenuItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.dishes.length,
        itemBuilder: (context, i) {
          return DishTile(widget.dishes[i]);
        },
        padding: EdgeInsets.only(bottom: kFloatingActionButtonMargin + 150)
      ),
    );
  }
}
