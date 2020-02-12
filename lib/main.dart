import 'package:flutter/material.dart';
import 'package:moPass/screens/directory_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mise',
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      //primarySwatch: MaterialColor(Colors.black[500].value, Colors.black),
      primaryColor: Colors.black,
      //backgroundColor: Colors.black,
      accentColor: Colors.grey[800].withOpacity(0.5),
      fontFamily: 'HK Grotesk',
    ),
    home: DirectoryScreen(),
  )
);
}
