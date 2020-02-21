import 'package:flutter/material.dart';

class DirectoryAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 62.0),
        child: Align(
          alignment: Alignment.center,
          child: Text('LITTLE SISTER', style: new TextStyle(fontSize: 30.0, color: Colors.white))
        )
      )
     );
  }

}
