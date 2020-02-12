import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/data.dart';

class MenuItemPage extends StatefulWidget {
  final List<String> dishes;

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
          // dart(TODO): here to filter out menu items
          return ExpansionTile(
            title: Text(DISHES[widget.dishes[i]].name, style: new TextStyle(fontSize: 18.0, color: Colors.white)),
            children: <Widget>[
              Column(
                children: _buildExpandableContent(DISHES[widget.dishes[i]]),
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
        title: Text(dish.description, style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.6)))
      )
    );

    return columnContent;
  }
}
