import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/data.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:provider/provider.dart';

class FilterPopout extends StatefulWidget {

  final void Function() onCloseListener;

  FilterPopout(this.onCloseListener);

  @override
  _FilterPopoutState createState() => new _FilterPopoutState();
}

class _FilterPopoutState extends State<FilterPopout> {

  @override
  void dispose() {
    super.dispose();
    widget.onCloseListener();
  }

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
        data: Theme.of(context).copyWith(unselectedWidgetColor: Color.fromRGBO(255, 255, 255, 0.5)),
        child: CheckboxListTile(

        title: Text(allergen, style: TextStyle(fontSize: 18.0, color: Colors.white)),
        onChanged: _boxToggled(filterData, allergen),
        value: filterData.getItem(allergen),
        controlAffinity: ListTileControlAffinity.leading,
        checkColor: Color.fromRGBO(64, 64, 64, 1),
        activeColor: Colors.white,
        dense: true,
      ));
    }).toList();
    return new Scaffold(
      body: Container(
        color: Colors.grey[800], 
        padding: EdgeInsets.only(left: 15.0, top: 80.0),
        child: Column(
          children: <Widget>[
            Expanded(
            child: ListView(
            children: list,
           )
           ), 
           Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
             child: SizedBox(
                  height: 49.0,
                  width: 234.0,
                  child: RaisedButton( //Check when allergens need scrolling
                    color: Color.fromRGBO(159, 159, 159, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Apply Filter', style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(64, 64, 64, 1))),
                  )
            ))
    ] )));
  }
}