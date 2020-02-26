import 'package:flutter/material.dart';


class FilterAppBar extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        margin: const EdgeInsets.only(left: 17.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text('Common Filters', style: new TextStyle(fontSize: 18.0, color: Colors.white, fontWeight:FontWeight.bold))
        )
      )
      );
  }

}
