import 'package:flutter/material.dart';
import 'package:moPass/components/directory_app_bar.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/screens/menuitem_screen.dart';
import 'package:moPass/screens/tables_screen.dart';

class DirectoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(168.0),
        child: DirectoryAppBar(),
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            children: [
              _DirectoryItemButton(text: 'Filter by Allergen / Diet',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuItemScreen('Cold'))
                )
              ),
              _DirectoryItemButton(text: 'Manage Tables',
                onPressed: () => Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => TableScreen())
                ),
              ),
            ]
          ),
          Expanded(
            child: Align(alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Powered by',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                          fontSize: 18.0,
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, bottom: 4.0),
                      child: Image(
                        height: 16.0,
                        image: AssetImage('assets/icons/nomi-white-withword.png'), 
                        color: Color.fromRGBO(128, 128, 128, 1.0),
                      )
                    )
                ])
              )
            ),
          )
        ]
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
      )
    );
  }
}