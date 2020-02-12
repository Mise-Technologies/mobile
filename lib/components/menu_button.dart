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
        child: Text(this.category, style: TextStyle(fontSize: 18.0, color: Colors.white)),
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