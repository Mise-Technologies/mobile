import 'package:flutter/material.dart';
import 'package:moPass/app_config.dart';
import 'package:moPass/nomi_app.dart';

void main() {
  final app = new AppConfig(
    apiBaseUrl: "http://nomi-meni-service.herokuapp.com/api",
    child: NomiApp()
  );
  
  runApp(app);
}