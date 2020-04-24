import 'package:flutter/material.dart';
import 'package:moPass/data_store.dart';
import 'package:moPass/screens/login.dart';
import 'package:provider/provider.dart';

import 'models/menu_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MenuDataProvider>(
      builder: (_) => MenuDataProvider(DataStore.store.menu),
      child: MaterialApp(
        title: 'Nomi',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.black,
          accentColor: Color.fromRGBO(25, 25, 25, 1),
          fontFamily: 'HKGrotesk',
          unselectedWidgetColor: Colors.white,
        ),
        home: LoginScreen(),
      ),
    ),
  );
}