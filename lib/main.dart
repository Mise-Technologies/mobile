import 'package:flutter/material.dart';
import 'package:moPass/screens/tables_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Nomi',
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      accentColor: Color.fromRGBO(255, 255, 255, 0.1),
      fontFamily: 'HKGrotesk',
    ),
    home: TablesScreen(),
  ));
}
