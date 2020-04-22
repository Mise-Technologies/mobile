import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/screens/tables_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'allergen_picker_screen.dart';

class DirectoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            prefs.setString('token', null);
            Navigator.pop(context);
          }
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 62.0, bottom: 50.0),
            child: Align(
              alignment: Alignment.center,
              child: Image(image: AssetImage('assets/images/bacari-white.png'), height: 60.0),
              //Text('BACARI', style: new TextStyle(fontSize: 30.0, color: Colors.white))
            )
          ),
          ListView(
            shrinkWrap: true,
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
        borderSide: BorderSide(color: Theme.of(context).accentColor),
      )
    );
  }
}