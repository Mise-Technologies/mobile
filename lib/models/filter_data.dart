import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:moPass/data.dart';

class FilterData extends ChangeNotifier {
  Map<String, bool> _filters = HashMap<String, bool>();
  Set<String> _excludedItems = HashSet<String>();

  Set<String> get excluded => _excludedItems;

  FilterData() {
    for (String item in ALLERGENTS.keys) {
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
  }

  void saveFilter() {
    _excludedItems.clear();
    for (String key in _filters.keys) {
      if (_filters[key]) {
        _excludedItems.addAll(ALLERGENTS[key]);
      }
    }
    notifyListeners();
  }
}