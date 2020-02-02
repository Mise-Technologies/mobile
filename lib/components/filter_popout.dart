import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/model/filter_data.dart';
import 'package:provider/provider.dart';

class FilterPopout extends StatefulWidget {

  FilterPopout() {
    print("Here...");
  }

  @override
  _FilterPopoutState createState() => new _FilterPopoutState();
}

class _FilterPopoutState extends State<FilterPopout> {

  @override
  Widget build(BuildContext context) {
    final filterData = Provider.of<FilterData>(context);
    return new Align(
      alignment: FractionalOffset.centerRight,
      child: Center(
        child: RaisedButton(onPressed: () {
          filterData.toggle();
          Navigator.pop(context);
        })
      ),
    );
  }
}