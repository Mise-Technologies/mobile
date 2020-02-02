import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItemPage extends StatefulWidget {
  @override
  _MenuItemPageState createState() => new _MenuItemPageState();
}

class _MenuItemPageState extends State<MenuItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, i) {
          return ExpansionTile(
            title: Text(dishes[i].title, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            children: <Widget>[
              Column(
                children: _buildExpandableContent(dishes[i]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandableContent(Dish vehicle) {
    List<Widget> columnContent = [];

    columnContent.add(
      ListTile(
        title: Text(vehicle.content, style: TextStyle(fontSize: 18.0))
      )
    );

    return columnContent;
  }
}

class Dish {
  final String title;
  String content;

  Dish(this.title, this.content);
}

List<Dish> dishes = [
  new Dish(
    'Sesame Sourdough Baguette',
    'Blah'
  ),
  new Dish(
    'Fried Meatballs',
    'blah'
  )
];