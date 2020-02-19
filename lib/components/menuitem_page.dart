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
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),  color: Theme.of(context).accentColor),
            margin: EdgeInsets.only(bottom: 20.0),
            child: ExpansionTile(
              trailing: Image(image: AssetImage('assets/icons/expand_arrow_more.png')),
              title: Text(widget.dishes[i].name, style: new TextStyle(fontSize: 20.0, color: Colors.white)),
              children: <Widget>[
                Column(
                  children: _buildExpandableContent(widget.dishes[i]),
                ),
              ],
              )
          );
        },
      ),
    );
  }

  _buildExpandableContent(Dish dish) {
    List<Widget> columnContent = [];

    columnContent.add(
      ListTile(
        title: Text(dish.description, style: TextStyle(fontSize: 18.0, color: Colors.white.withOpacity(0.7), fontStyle: FontStyle.italic))
      )
    );

    return columnContent;
  }
}
