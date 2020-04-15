import 'package:flutter/material.dart';

import '../data.dart';

class AllergenPickerScreen extends StatelessWidget {
 

  static const double _kCrossAxisSpacing = 15.0;
  static const double _kHorizontalPadding = 20.0;
  static const double _kMainAxisSpacing = 20.0;
 
    
  @override
  Widget build(BuildContext context) {
    List<Image> allergenIcons = [];
    for (String allergen in ALLERGENS.keys) {
      String pref = 'assets/icons/allergens/';
      String path = pref + allergen + '.png';
      allergenIcons.add(Image(image: AssetImage(path)));
    }

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
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Allergens", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                FlatButton(
                  //onPressed: () , 
                  child: Text("Clear All",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: _kCrossAxisSpacing,
              mainAxisSpacing: _kMainAxisSpacing,
              children: ALLERGENS.keys.map<Widget>((String allergen) {
                return Row(
                  children: <Widget>[
                    Image(image: AssetImage('assets/icons/allergens/' + allergen + '.png')),
                    Text(allergen, style: TextStyle(fontSize: 18.0, color: Colors.white))
                  ],
                );
                
              }).toList(),
              shrinkWrap: true,
              primary: false,
              addAutomaticKeepAlives: true,
            ),
            Row(
              children: <Widget>[
                Text("Diets", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                FlatButton(
                  //onPressed: () , 
                  child: Text("Clear All",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }

}



