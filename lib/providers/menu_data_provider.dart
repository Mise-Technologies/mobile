import 'package:flutter/material.dart';
import 'package:moPass/models/menu_data.dart';
import 'package:provider/provider.dart';

class MenuDataProvider extends ChangeNotifierProvider<MenuDataWrapper> {

  MenuDataProvider({
    @required data,
    child
  }): super(
    builder: (_) => MenuDataWrapper(data),
    child: child
  );

}