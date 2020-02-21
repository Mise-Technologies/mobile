import 'package:flutter/material.dart';


class FilterAppBar extends StatelessWidget {

  @override //Will make a real search bar later
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        margin: const EdgeInsets.only(top: 150.0, left: 17.0),
          child: SizedBox(
            height: 36.0,
            width: 254.0,
            child: RaisedButton(
              color: Colors.grey[400],
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(100.0),
              ),
              onPressed: () {
              },
              child: Row(
              // mainAxisAlignment: MainAxisAlignment.center, // Center the Widgets.
                //mainAxisSize: MainAxisSize.max, //Use all width in raised button
                children: <Widget>[
                  Expanded( //prevents overflow
                    child: Text('Search Ingredient', style: TextStyle(fontSize: 18.0, color: Colors.grey[800])),
                    
                  ), 
                  IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: _startSearch,
                  ),
                  ]
          ),
            )
     )));
  }
  //can remove later
  void _startSearch() {
  }

}
