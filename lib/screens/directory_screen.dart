import 'package:flutter/material.dart';
import 'package:moPass/components/directory_app_bar.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/data.dart';

class DirectoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(168.0),
        child: DirectoryAppBar(),
        ),
      body: Container(
        margin: const EdgeInsets.only(right: 25.0, left:25.0),
        child: ListView(
          children: List<Widget>.generate(MENU_CATEGORIES.length, (int index) {
            return Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: MenuButton(MENU_CATEGORIES[index]));
          })
      ))
    );
  }
}