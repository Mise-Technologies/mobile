import 'package:flutter/material.dart';
import 'package:moPass/screens/menuitem_screen.dart';

class MenuButton extends StatelessWidget {

  final category;

  MenuButton(this.category);

  @override
  Widget build(BuildContext context) {
    // Maybe it should be just SizedBox?
    return RaisedButton(
      child: Text(this.category),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => MenuItemScreen()));
      }
    );
  }
  
}