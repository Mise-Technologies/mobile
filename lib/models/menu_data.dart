import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'dish.dart';

class MenuData {

  MenuData.fromDB(List<Map<String, dynamic>> rows) {

  }

  MenuData.fromResponse(List<dynamic> data) {
    for (final dishMap in data) {
      List<String> allergens = [];
      if (dishMap.containsKey('tags')) {
        for (final tagMap in dishMap['tags']) {
          if (tagMap['type'] == 'allergen') {
            allergens.add(tagMap['name']);
          }
        }
      }
      final dish = Dish.create(
        id: dishMap['id'],
        name: dishMap['name'],
        description: dishMap['description'],
        tableTalk: dishMap['tableTalkPoints'],
        category: dishMap['category'],
        allergens: allergens,
      );
      if (!_categories.contains(dish.category)) {
        _categories.add(dish.category);
      }
      _dishes[dish.id] = dish;
      if (!_dishesByCategory.containsKey(dish.category)) {
        _dishesByCategory[dish.category] = [];
      }
      _dishesByCategory[dish.category].add(dish);
      for (String allergen in allergens) {
        if (!_dishesByAllergens.containsKey(allergen)) {
          _dishesByAllergens[allergen] = HashSet();
        }
        _dishesByAllergens[allergen].add(dish);
      }
    }
  }

  List<String> _categories = [];
  Map<int, Dish> _dishes = HashMap(); // by dish id in cloud base
  Map<String, List<Dish>> _dishesByCategory = HashMap();
  Map<String, Set<Dish>> _dishesByAllergens = HashMap();

  List<String> get categories => _categories;
  Map<int, Dish> get dishes => _dishes;
  Map<String, List<Dish>> get dishesByCategory => _dishesByCategory;
  Map<String, Set<Dish>> get dishesByAllergens => _dishesByAllergens;
}

class MenuDataProvider extends ChangeNotifier {
  Future<MenuData> menu;

  MenuDataProvider(this.menu);

  void updateWithReq(Future<Response> response) {
    menu = Future(() async {
      final res = await response;
      if (false) {
        // 304
        return this.menu;
      } else {
        return MenuData.fromResponse(res.data);
      }
    });
    notifyListeners();
  }
}