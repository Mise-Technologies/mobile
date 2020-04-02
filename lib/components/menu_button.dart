import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {

  final text;
  var textAlign = TextAlign.left;
  final void Function() onPressed;
  

  MenuButton({this.text, this.textAlign, this.onPressed});

  @override
  Widget build(BuildContext context) {
    // Maybe it should be just SizedBox?
    return SizedBox(
      height: 65.0,
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
                child: Text(
                  this.text, 
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                  textAlign: this.textAlign,
                )
              )
            )
          ]
        ),
        onPressed: this.onPressed
      )
      
    );
  }
  
}