import 'package:flutter/cupertino.dart';

import 'dish.dart';

class MenuData extends ChangeNotifier{

  MenuData.fromDB(List<Map<String, dynamic>> result) {
    
  }

  MenuData.fromResponse(dynamic data) {
    for (final dish in data) {
      
    }
  }

  List<String> _categories;
  List<Dish> _dishes;
  Map<String, Dish> _dishesByCategory;
  Map<String, Set<Dish>> _dishesByAllergens;

}