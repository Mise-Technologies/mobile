import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/data.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:provider/provider.dart';
import 'package:moPass/components/filter_app_bar.dart';

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
      return Theme(
        data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.grey),
        child: CheckboxListTile(

        title: Text(allergen, style: TextStyle(fontSize: 18.0, color: Colors.white)),
        onChanged: _boxToggled(filterData, allergen),
        value: filterData.getItem(allergen),
        controlAffinity: ListTileControlAffinity.leading,
        checkColor: Colors.grey[800],
        activeColor: Colors.white,
        dense: true,
      ));
    }).toList();
    list.insert(0, 
      Container(
        margin: EdgeInsets.only(right: 100.0, bottom: 5.0, top: 15.0),
        child: Text("Common Allergens", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold))
    ));
    list.add(
      Padding(
      padding: const EdgeInsets.only(top: 40.0), //Adjust This
      child: SizedBox(
          height: 49.0,
          width: 234.0,
          child: RaisedButton( //Check when allergens need scrolling
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            onPressed: () {
              Navigator.pop(context);
              filterData.saveFilter();
            },
            child: Text('Apply Filter', style: TextStyle(fontSize: 16.0, color: Colors.grey[800])),
          )
    )));
    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
            child: FilterAppBar()),
      body: Container(
        color: Colors.grey[800], 
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: list,
          )
    ));
  }
}