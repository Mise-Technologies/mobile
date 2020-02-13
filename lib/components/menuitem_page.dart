import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          return ExpansionTile(
            title: Text(widget.dishes[i].name, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            children: <Widget>[
              Column(
                children: _buildExpandableContent(widget.dishes[i]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandableContent(Dish dish) {
    List<Widget> columnContent = [];

    columnContent.add(
      ListTile(
        title: Text(dish.description, style: TextStyle(fontSize: 18.0))
      )
    );

    return columnContent;
  }
}
