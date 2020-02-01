import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterPopout extends StatefulWidget {
  @override
  _FilterPopoutState createState() => new _FilterPopoutState();
}

class _FilterPopoutState extends State<FilterPopout> {
  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: FractionalOffset.centerRight,
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Icon(Icons.navigate_next),
            new Icon(Icons.close),
            new Text ("More items..")
          ],
        ),
        color: Colors.blueGrey,
        height: 700.0,
        width: 200.0,
      ),
    );
  }
}