import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';

import '../data.dart';

class AllergenPickerScreen extends StatelessWidget {
  static const double _kCrossAxisSpacing = 15.0;
  static const double _kHorizontalPadding = 20.0;
  static const double _kMainAxisSpacing = 20.0;
 
    
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tileWidth = (size.width - _kCrossAxisSpacing - _kHorizontalPadding * 2) / 2;
    final ratio = tileWidth / 60.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          icon: Image(image: AssetImage('assets/icons/arrow_left.png')),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 125.0, right: 39.0),
                  child: 
                    Text("Allergens", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))
                ),
                FlatButton(
                  onPressed: (){}, 
                  child: Text("Clear All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Divider(
                  height: 10.0,
                  color: Color.fromRGBO(255, 255, 255, .5),
                  indent: 5.0,
                  endIndent: 5.0,
            )),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: _kCrossAxisSpacing,
              mainAxisSpacing: _kMainAxisSpacing,
              childAspectRatio: ratio,
              children: ALLERGENS.keys.map<_AllergenTile>((String allergen) =>
                _AllergenTile(allergen: allergen,
                )
              ).toList(),
              shrinkWrap: true,
              primary: false,
              addAutomaticKeepAlives: true,
            ),
            Row(
              children: <Widget>[
                 Padding(
                  padding: EdgeInsets.only(left: 144.0, right: 49.0),
                  child: Text("Diets", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))
                ),
                FlatButton(
                  onPressed: (){}, 
                  child: Text("Clear All",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Divider(
                  height: 10.0,
                  color: Color.fromRGBO(255, 255, 255, .5),
                  indent: 5.0,
                  endIndent: 5.0,
            )),
          ],
        ),
      )
    );
  }

}
class _AllergenTile extends StatelessWidget {

  final String allergen;

  _AllergenTile({
    @required this.allergen,
  });

  @override
  Widget build(BuildContext context) {
    return MenuButton(
      onPressed: (){},
      align: Alignment.center,
      overlay: Padding(
        padding: EdgeInsets.only(top:12.0, left:20.0),
        child:Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right:10.0),
              child: Image(image: AssetImage('assets/icons/allergens/' + allergen + '.png'), width: 36.0, height: 36.0)
            ),
            Text(allergen, style: TextStyle(fontSize: 18.0, color: Colors.white))
          ],
        )
    ));
  }
}

