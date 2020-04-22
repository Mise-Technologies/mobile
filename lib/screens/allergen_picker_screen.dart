import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:moPass/models/menu_data.dart';
import 'package:provider/provider.dart';
import 'menuitem_screen.dart';

class AllergenPickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuDataProvider>(context);
    return FutureBuilder<MenuData>(future: menuProvider.menu,
      builder: (BuildContext context, AsyncSnapshot<MenuData> snap) {
        if (snap.hasData) {
          return ChangeNotifierProvider<FilterData>(
            builder: (_) => FilterData(snap.data),
            child: _AllergenPickerScreen(snap.data),
          );
        } else {
          return Scaffold(
            body: Center(child: Text('LOADING>>>', style: TextStyle(color: Colors.white)))
          );
        }
      }
    );
  }
}

class _AllergenPickerScreen extends StatefulWidget {

  final MenuData menu;

  _AllergenPickerScreen(this.menu);

  @override
  _AllergenPickerScreenState createState() => _AllergenPickerScreenState();
}

class _AllergenPickerScreenState extends State<_AllergenPickerScreen> {
  
  static const double _kCrossAxisSpacing = 15.0;
  static const double _kHorizontalPadding = 20.0;
  static const double _kMainAxisSpacing = 20.0;
 
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
    
  @override
  Widget build(BuildContext context) {
    final FilterData filterData = Provider.of<FilterData>(context);
    final hiddenCount = filterData.checkedItemCount;

    final size = MediaQuery.of(context).size;
    final tileWidth = (size.width - _kCrossAxisSpacing - _kHorizontalPadding * 2) / 2;
    final ratio = tileWidth / 60.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          icon: Image(image: AssetImage('assets/icons/arrow_left.png')),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
          icon: Image(image: AssetImage('assets/icons/check.png')),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuItemScreen(filterData, widget.menu)),
            );
            if(hiddenCount > 0){
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
          }),
        ],  
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 125.0, right: 39.0),
                  child: 
                    Text("Allergens", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))
                ),
                FlatButton(
                  onPressed: filterData.clearFilter
                  , 
                  child: Text("Clear All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Divider(
                  height: 10.0,
                  color: Color.fromRGBO(255, 255, 255, .5),
                  indent: 5.0,
                  endIndent: 5.0,
            )),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: _kCrossAxisSpacing,
              mainAxisSpacing: _kMainAxisSpacing,
              childAspectRatio: ratio,
              children: widget.menu.dishesByAllergens.keys.map<_AllergenTile>((String allergen) =>
                _AllergenTile(allergen: allergen,
                  borderSide: BorderSide(
                    color: filterData.getItem(allergen)? Colors.white: Theme.of(context).accentColor
                  ),
                  onPressed: () {
                    bool selected = filterData.getItem(allergen);
                    filterData.setItem(allergen, !selected);
                  },
                )
              ).toList(),
              shrinkWrap: true,
              primary: false,
              addAutomaticKeepAlives: true,
            ),
            /*
            Row(
              children: <Widget>[
                 Padding(
                  padding: EdgeInsets.only(left: 144.0, right: 49.0),
                  child: Text("Diets", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))
                ),
                FlatButton(
                  onPressed: (){}, 
                  child: Text("Clear All",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Divider(
                  height: 10.0,
                  color: Color.fromRGBO(255, 255, 255, .5),
                  indent: 5.0,
                  endIndent: 5.0,
            )),
            */
          ],
        ),
      )
    );
  }

}
class _AllergenTile extends StatelessWidget {

  final String allergen;
  final BorderSide borderSide; 

  final void Function() onPressed;

  _AllergenTile({
    @required this.allergen,
    @required this.onPressed,
    @required this.borderSide,
   
  });

  @override
  Widget build(BuildContext context) {
  
    return MenuButton(
      onPressed: this.onPressed,
      align: Alignment.center,
      overlay: Padding(
        padding: EdgeInsets.only(top:12.0, left:20.0),
        child:Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right:10.0),
              child: Image(image: AssetImage('assets/icons/allergens/' + allergen + '.png'), width: 36.0, height: 36.0)
            ),
            Text(allergen, style: TextStyle(fontSize: 18.0, color: Colors.white))
          ],
        )
      ),
      borderSide: this.borderSide,  
    );
  }
}

