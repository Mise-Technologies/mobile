import 'package:flutter/material.dart';
import 'package:moPass/models/dish.dart';

class DishTile extends StatelessWidget {
  final Dish _dish;

  DishTile(this._dish);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),  color: Theme.of(context).accentColor),
      margin: EdgeInsets.only(bottom: 15.0), //between cards
      child: Column(
        children: <Widget>[
          ExpansionTile(
            trailing: Image(image: AssetImage('assets/icons/expand_arrow_more.png')),
            title: Container(
              //padding: EdgeInsets.all(2.0),
              child: Text(
                _dish.name, 
                style: TextStyle(fontSize: 18.0, color: Colors.white)
            )),
            children: <Widget>[
              Column(
                children: _buildExpandableContent(_dish),
              ),
            ],
          ),
          _AllergenIconBar(_dish.allergies)
        ],
      )
    );
  }

  _buildExpandableContent(Dish dish) {
    List<Widget> columnContent = [];

    columnContent.add(
      Container(
        color: Color.fromRGBO(255, 255, 255, 0.05),
        padding: EdgeInsets.symmetric(vertical: 0.0),
        child: ListTile(
          title: Text(dish.description, style: TextStyle(
            fontSize: 18.0, 
            color: Colors.white.withOpacity(0.7), 
            fontStyle: FontStyle.italic
          ))
      ))
    );

    return columnContent;
  }
  
}

class _AllergenIconBar extends StatelessWidget {
  final List<String> _allergens;

  _AllergenIconBar(this._allergens);

  @override
  Widget build(BuildContext context) {
    List<Image> allergenIcons = [];
    for (String allergen in _allergens) {
      String pref = 'assets/icons/allergens/';
      String path = pref + allergen + '.png';
      allergenIcons.add(Image(image: AssetImage(path)));
    }
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(
        color: Color.fromRGBO(255, 255, 255, 0.1),
        width: 1.0
      ))),
      child: GridView.extent(
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        shrinkWrap: true,
        primary: false,
        maxCrossAxisExtent: 32.0,
        children: allergenIcons
      )
    );
  }

}