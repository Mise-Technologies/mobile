import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:moPass/models/menu_data.dart';
import 'package:provider/provider.dart';

class FilterPopout extends StatefulWidget {

  final MenuData menu;
  final void Function() onCloseListener;

  FilterPopout(this.menu, {
    this.onCloseListener,
  });

  @override
  _FilterPopoutState createState() => new _FilterPopoutState();
}

class _FilterPopoutState extends State<FilterPopout> {

  @override
  void dispose() {
    super.dispose();
    if (widget.onCloseListener != null) {
      widget.onCloseListener();
    }
  }

  Function(bool) _boxToggled(FilterData filterData, String filterItem) {
    return (bool value) {
      setState(() => filterData.setItem(filterItem, value));
    };
  }

  @override
  Widget build(BuildContext context) {
    final filterData = Provider.of<FilterData>(context);
    final hiddenCount = filterData.checkedItemCount;
    var list = widget.menu.dishesByAllergens.keys.map<Widget>((String allergen) {
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
            padding: const EdgeInsets.only(bottom: 38.0),
            child: SizedBox(
              height: 47.0,
              width: 234.0,
              child: RaisedButton( //Check when allergens need scrolling
                color: hiddenCount == 0? Color.fromRGBO(111, 111, 111, 1): Color.fromRGBO(180, 180, 180, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                onPressed: (){
                  if(hiddenCount > 0){
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (BuildContext context){
                        Future.delayed(Duration(seconds: 1), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          backgroundColor: Color.fromRGBO(57, 57, 57, 1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          content: Container(
                            margin: EdgeInsets.only(left: 30.0, top: 8.0),
                            child: Text(hiddenCount < 2 ? '1 Filter Applied': '$hiddenCount Filters Applied',
                              style: TextStyle(color: Colors.white, fontSize: 22.0)),       
                        ));
                      }
                    );
                  }
                },
                child: Text(hiddenCount > 0? 'Apply Filter ($hiddenCount)': 'Apply Filter', 
                  style: TextStyle(fontSize: 16.0, 
                  color: Color.fromRGBO(64, 64, 64, 1))
                ),
              )
            ))
    ] )));
  }
}