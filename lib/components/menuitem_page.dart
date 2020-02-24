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
<<<<<<< HEAD
          return DishTile(widget.dishes[i]);
=======
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),  color: Theme.of(context).accentColor),
            margin: EdgeInsets.only(bottom: 20.0),
            child: ExpansionTile(
              trailing: Image(image: AssetImage('assets/icons/expand_arrow_more.png')),
              title: Row(
                children: <Widget>[
                  Expanded(child: Text(widget.dishes[i].name, style: new TextStyle(fontSize: 20.0, color: Colors.white))),
                ]),
              children: <Widget>[
                Column(
                  children: _buildExpandableContent(widget.dishes[i]),
                ),
              ],
              )
          );
>>>>>>> styling_branch
        },
        padding: EdgeInsets.only(bottom: kFloatingActionButtonMargin + 150)
      ),
    );
  }
}
