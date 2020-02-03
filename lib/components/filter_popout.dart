import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:provider/provider.dart';

class FilterPopout extends StatefulWidget {
  final _filterData;

  FilterPopout(this._filterData);

  @override
  _FilterPopoutState createState() => new _FilterPopoutState(_filterData);
}

class _FilterPopoutState extends State<FilterPopout> {

  /// dart(TODO): implement check boxes and FilterData functionality

  FilterData _filterData;

  _FilterPopoutState(this._filterData);

  @override
  Widget build(BuildContext context) {
    final filterData = Provider.of<FilterData>(context);
    return new Align(
      alignment: FractionalOffset.centerRight,
      child: Center(
        child: RaisedButton(onPressed: () {
          filterData.saveFilter();
          Navigator.pop(context);
        })
      ),
    );
  }
}