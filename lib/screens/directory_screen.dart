import 'package:flutter/material.dart';
import 'package:moPass/components/directory_app_bar.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/screens/tables_screen.dart';

import 'allergen_picker_screen.dart';

class DirectoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(168.0),
        child: DirectoryAppBar(),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          children: [
            _DirectoryItemButton(text: 'Filter by Allergen / Diet',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllergenPickerScreen())
              )
            ),
            _DirectoryItemButton(text: 'Manage Tables',
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => TableScreen())
              ),
            ),
          ]
        )
      )
    );
  }
}

class _DirectoryItemButton extends StatelessWidget {

  final text;
  final void Function() onPressed;

  _DirectoryItemButton({
    this.text,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0), 
      child: MenuButton(
        text: text, 
        onPressed: onPressed,
        overlay: Container(
          alignment: Alignment.centerRight,
          child: Image(image: AssetImage('assets/icons/arrow_right.png'))
        ),
        borderSide: BorderSide(color: Theme.of(context).accentColor),
      )
    );
  }
}