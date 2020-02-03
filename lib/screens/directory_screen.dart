import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/data.dart';

class DirectoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LITTLE SISTER'),
      ),
      body: ListView(
        children: List<Widget>.generate(MENU_CATEGORIES.length, (int index) {
          return MenuButton(MENU_CATEGORIES[index]);
        })
      ),
    );
  }

}