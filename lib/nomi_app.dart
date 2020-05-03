import 'package:flutter/material.dart';
import 'package:moPass/providers/menu_data_provider.dart';
import 'package:moPass/screens/login.dart';

import 'data_store.dart';

class NomiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MenuDataProvider(
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
    );
  }
}