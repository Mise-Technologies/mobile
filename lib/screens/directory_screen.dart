import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/data.dart';

class DirectoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LITTLE SISTER', style: new TextStyle(fontSize: 30.0)),
      ),
      /*
      body: ListView(
        children: List<Widget>.generate(MENU_CATEGORIES.length, (int index) {
          return MenuButton(MENU_CATEGORIES[index]);
        })
      ),
      */
      body: Container(
        margin: const EdgeInsets.all(25.0),
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