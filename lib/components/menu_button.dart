import 'package:flutter/material.dart';
import 'package:moPass/screens/menuitem_screen.dart';

class MenuButton extends StatelessWidget {

  final category;

  MenuButton(this.category);

  @override
  Widget build(BuildContext context) {
    // Maybe it should be just SizedBox?
    return SizedBox(
      height: 69.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
           borderRadius: new BorderRadius.circular(10.0),
        ),
        color: Theme.of(context).accentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the Widgets.
          mainAxisSize: MainAxisSize.max, //Use all width in raised button
          children: <Widget>[
            Expanded( //prevents overflow
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
                child: Text(this.category, style: TextStyle(fontSize: 18.0, color: Colors.white))
              )
            ), 
            Image(
              image: AssetImage('assets/icons/arrow_right.png')
            ),
          ]
        ),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => MenuItemScreen(this.category))
          );
        }
      )
      
    );
  }
  
}