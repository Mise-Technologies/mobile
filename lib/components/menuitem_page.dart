import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/data.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:provider/provider.dart';

class MenuItemPage extends StatefulWidget {
  final List<String> dishes;

  MenuItemPage(this.dishes);

  @override
  _MenuItemPageState createState() => new _MenuItemPageState();
}

class _MenuItemPageState extends State<MenuItemPage> {
  @override
  Widget build(BuildContext context) {
    final filterData = Provider.of<FilterData>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.dishes.length,
        itemBuilder: (context, i) {
          if (!filterData.excluded.contains(widget.dishes[i])) {
            return ExpansionTile(
              title: Text(widget.dishes[i], style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
              children: <Widget>[
                Column(
                  children: _buildExpandableContent(DISHES[widget.dishes[i]]),
                ),
              ],
            );
          } else {
            return null;
          }
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
