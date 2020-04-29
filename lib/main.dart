import 'package:flutter/material.dart';
import 'package:moPass/data_store.dart';
import 'package:moPass/models/menu_data.dart';
import 'package:moPass/providers/menu_data_provider.dart';
import 'package:moPass/screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MenuDataProvider(
      data: DataStore.store.menu,
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