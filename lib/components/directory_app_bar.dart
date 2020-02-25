import 'package:flutter/material.dart';

class DirectoryAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 62.0),
        child: Align(
          alignment: Alignment.center,
          child: Image(image: AssetImage('assets/images/bacari-white.png'), height: 60.0),
          //Text('BACARI', style: new TextStyle(fontSize: 30.0, color: Colors.white))
        )
      )
     );
  }

}
