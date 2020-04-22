import 'package:flutter/material.dart';
import 'package:moPass/screens/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Nomi',
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      accentColor: Color.fromRGBO(25, 25, 25, 1),
      fontFamily: 'HKGrotesk',
      unselectedWidgetColor: Colors.white,
    ),
    home: NomiApp(),
  ));
}

class NomiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}