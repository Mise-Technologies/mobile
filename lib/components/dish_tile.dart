import 'package:flutter/material.dart';
import 'package:moPass/models/dish.dart';

class DishTile extends StatefulWidget {
  final Dish dish;
  final bool initiallyExpanded;
  final Function(bool) onExpansionChanged;

  DishTile(this.dish, {this.initiallyExpanded, @required this.onExpansionChanged});

  @override
  _DishTileState createState() => _DishTileState();
}

class _DishTileState extends State<DishTile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),  color: Theme.of(context).accentColor),
      margin: EdgeInsets.only(bottom: 15.0), //between cards
      child: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.white),
        child: Column(
          children: <Widget>[
            ExpansionTile(
              initiallyExpanded: widget.initiallyExpanded,
              onExpansionChanged: widget.onExpansionChanged,
              //trailing: Image(image: AssetImage('assets/icons/expand_arrow_more.png')),
              title: Container(
                //padding: EdgeInsets.all(2.0),
                child: Text(
                  widget.dish.name, 
                  style: TextStyle(fontSize: 18.0, color: Colors.white)
              )),
              children: <Widget>[
                Column(
                  children: _buildExpandableContent(widget.dish),
                ),
              ],
            ),
            _AllergenIconBar(widget.dish.allergens)
          ],
      ))
    );
  }

  _buildExpandableContent(Dish dish) {
    List<Widget> columnContent = [];

    columnContent.add(
      Container(
        color: Color.fromRGBO(255, 255, 255, 0.05),
        padding: EdgeInsets.symmetric(vertical: 0.0),
        child: ListTile(
          title: Text(dish.tableTalk, style: TextStyle(
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
    //List<GestureDetector> allergenIcons = [];
    List<Image> allergenIcons = [];
    for (String allergen in _allergens) {
      String pref = 'assets/icons/allergens/';
      String path = pref + allergen + '.png';
      allergenIcons.add(Image(image: AssetImage(path), width: 32.0,height:32.0));
    }
    
    return GestureDetector(
      onTap:(){
         showDialog(
              barrierDismissible: true,
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  backgroundColor: Color.fromRGBO(57, 57, 57, 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  title: Text("Contains: ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0)),
                  content: Container(
                    width: 200.0,
                    height: 115.0,
                    child: Scrollbar(
                      child: ListView(
                        children: new List.generate(_allergens.length, (index){
                          return Padding(
                            padding: EdgeInsets.only(bottom: 16.0),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: allergenIcons[index]
                                ),
                                Text(_allergens[index], style: TextStyle(color: Colors.white, fontSize: 18.0))
                              ],
                            )
                          );
                        })
                      )
                    )
                  )
                );
              }
            );
        
      },
      child: Container(
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
    ));
  }

}