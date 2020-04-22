import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:moPass/models/menu_data.dart';

class FilterData extends ChangeNotifier {
  final MenuData _menu;
  Map<String, bool> _filters = HashMap<String, bool>();
  Set<String> _excludedItems = HashSet<String>();

  Set<String> get excluded => _excludedItems;
  int get checkedItemCount {
    int count = 0;
    for (bool checked in _filters.values) {
      if (checked) {
        ++count;
      }
    }
    return count;
  }

  FilterData(this._menu) {
    for (String item in _menu.dishesByAllergens.keys) {
      _filters[item] = false;
    }
  }

  bool getItem(String item) {
    if (!_filters.containsKey(item)) {
      throw ErrorDescription('Inconsistent filter data');
    }
    return _filters[item];
  }

  void setItem(String item, bool value) {
    if (!_filters.containsKey(item)) {
      throw ErrorDescription('Inconsistent filter data');
    }
    _filters[item] = value;
    saveFilter();
  }

  void saveFilter() {
    _excludedItems.clear();
    for (String key in _filters.keys) {
      if (_filters[key]) {
        _excludedItems.addAll(_menu.dishesByAllergens[key].map((d) => d.name));
      }
    }
    notifyListeners();
  }

  void clearFilter() {
    _excludedItems.clear();

    // set all filters to false
    for (String item in _menu.dishesByAllergens.keys) {
      setItem(item, false);
    }
    notifyListeners();
  }
}