import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {

  static const double kDefaultHeight = 64.0;

  final String text;
  final Alignment align;
  final void Function() onPressed;
  final double height;
  final double width;
  final Widget overlay;

  MenuButton({
    this.text = "", 
    this.align = Alignment.centerLeft, 
    @required this.onPressed,
    this.height = MenuButton.kDefaultHeight,
    this.width,
    this.overlay
  });

  @override
  Widget build(BuildContext context) {
    // Maybe it should be just SizedBox?
    return SizedBox(
      height: this.height,
      width: this.width,
      child: RaisedButton(onPressed: this.onPressed,
        padding: EdgeInsets.all(0.0),
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: this.align,
            child: Text(
              this.text, 
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            )
          ),
          this.overlay,
        ]),
      )
      
    );
  }
  
}