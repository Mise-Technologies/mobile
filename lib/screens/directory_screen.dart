import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/components/custom_app_bar.dart';
import 'package:moPass/data.dart';

class DirectoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(128.0),
        child: CustomAppBar(),
        ),
      body: Container(
        margin: const EdgeInsets.only(right: 25.0, left:25.0),
        child: ListView(
          children: List<Widget>.generate(MENU_CATEGORIES.length, (int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: MenuButton(MENU_CATEGORIES[index]));
          })
      ))
    );
  }
}