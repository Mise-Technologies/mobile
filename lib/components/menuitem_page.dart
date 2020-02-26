import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/components/dish_tile.dart';
import 'package:moPass/models/dish.dart';

class MenuItemPage extends StatefulWidget {
  final List<Dish> dishes;

  MenuItemPage(this.dishes);

  @override
  _MenuItemPageState createState() => new _MenuItemPageState(dishes.length);
}

class _MenuItemPageState extends State<MenuItemPage> {

  List<bool> _expanded;

  _MenuItemPageState(int length) {
    _expanded = List.filled(length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.dishes.length,
        itemBuilder: (context, i) {
          return DishTile(
            widget.dishes[i],
            initiallyExpanded: _expanded[i],
            onExpansionChanged: (bool expanded) => 
              setState(() => _expanded[i] = expanded)
          );
        },
        padding: EdgeInsets.only(bottom: kFloatingActionButtonMargin + 150)
      ),
    );
  }
}
