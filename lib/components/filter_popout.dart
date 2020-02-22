import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/data.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:provider/provider.dart';

class FilterPopout extends StatefulWidget {

  @override
  _FilterPopoutState createState() => new _FilterPopoutState();
}

class _FilterPopoutState extends State<FilterPopout> {

  Function(bool) _boxToggled(FilterData filterData, String filterItem) {
    return (bool value) {
      setState(() => filterData.setItem(filterItem, value));
    };
  }

  @override
  Widget build(BuildContext context) {
    final filterData = Provider.of<FilterData>(context);
    var list = ALLERGENS.keys.map<Widget>((String allergen) {
      return CheckboxListTile(
        title: Text(allergen),
        onChanged: _boxToggled(filterData, allergen),
        value: filterData.getItem(allergen),
      );
    }).toList();
    list.add(
      RaisedButton(
        onPressed: () {
          Navigator.pop(context);
          filterData.saveFilter();
        },
        child: Text('Save Filter'),
      )
    );
    return Align(
      alignment: FractionalOffset.centerRight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: list,
        ),
      ),
    );
  }
}