import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/data.dart';

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
<<<<<<< HEAD
            title: Text(DISHES[widget.dishes[i]].name, style: new TextStyle(fontSize: 18.0, color: Colors.white)),
=======
            title: Text(widget.dishes[i].name, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
>>>>>>> b925a5f595d4a5e928ae078d26e5540843b02e65
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
        title: Text(dish.description, style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.6)))
      )
    );

    return columnContent;
  }
}
