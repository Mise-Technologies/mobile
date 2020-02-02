import 'package:flutter/material.dart';

class FilterData extends ChangeNotifier {

  void toggle() {
    notifyListeners();
  }
}