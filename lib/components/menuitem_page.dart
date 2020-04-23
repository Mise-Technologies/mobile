import 'dart:collection';

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

  Map<Dish, bool> _expanded = HashMap();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 23.0, left: 15.0, right: 15.0),
        child: ListView.builder(
          itemCount: widget.dishes.length,
          itemBuilder: (context, i) {
            Dish dish = widget.dishes[i];
            if (!_expanded.containsKey(dish)) {
              _expanded[dish] = false;
            }
            return DishTile(dish,
              initiallyExpanded: _expanded[dish],
              onExpansionChanged: (bool expanded) => 
                setState(() => _expanded[dish] = expanded)
            );
          },
          padding: EdgeInsets.only(bottom: kFloatingActionButtonMargin + 150)
        ),
      )
    );
  }
}
