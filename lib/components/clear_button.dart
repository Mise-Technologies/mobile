import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {

  final VoidCallback onPressed;
  final int hiddenCount;

  ClearButton({
    @required this.onPressed,
    @required this.hiddenCount,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color.fromRGBO(64, 64, 64, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      onPressed: onPressed,
      child: SizedBox(
        height: 100.0,
        width: 240.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(hiddenCount < 2 ? '1 Filter Is Applied': '$hiddenCount Filters Are Applied', 
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromRGBO(159, 159, 159, 1)
            )),
            Text('Clear Filters', style: TextStyle(
              fontSize: 18.0,
              color: Colors.white
            )),
          ]
        ),
      )
    );
  }
}