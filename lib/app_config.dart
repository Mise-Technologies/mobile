import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String apiBaseUrl;

  AppConfig({
    @required this.apiBaseUrl,
    @required Widget child
  }): super(child: child);

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: AppConfig);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}