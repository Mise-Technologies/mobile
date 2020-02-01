import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';

class DirectoryScreen extends StatelessWidget {

  final categories = [
    'All Dishes',
    'Appetizers',
    'Salad'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LITTLE SISTER'),
      ),
      body: ListView(
        children: List<Widget>.generate(categories.length, (int index) {
          return new MenuButton(categories[index]);
        })
      ),
    );
  }

}