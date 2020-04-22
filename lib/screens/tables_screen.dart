import 'package:flutter/material.dart';
import 'package:moPass/components/menu_button.dart';
import 'package:ordered_set/ordered_set.dart';
import 'package:provider/provider.dart';

class TableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<_EditingMode>(
      builder: (_) => _EditingMode(),
      child: _TableScreen(),
    );
  }
}

class _TableScreen extends StatefulWidget {

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<_TableScreen> with SingleTickerProviderStateMixin {

  static const double _kCrossAxisSpacing = 15.0;
  static const double _kHorizontalPadding = 20.0;
  static const double _kMainAxisSpacing = 20.0;

  AnimationController _controller;
  List<String> myTables = [];
  OrderedSet<String> allTables = OrderedSet((a, b) {
    return int.tryParse(a) - int.tryParse(b);
  });

  void Function() _onPressedNormal(String id) {
    return () => print("Navigating to table " + id);
  }

  void Function() _onPressedEditing(String id) {
    return () {
      bool isMyTable = true;
      var tableIt = myTables.where((t) => t == id);
      if (tableIt.isEmpty) {
        isMyTable = false;
        tableIt = allTables.where((t) => t == id);
      }
      final table = tableIt.single;
      setState(() {
        if (isMyTable) {
          myTables.remove(table);
          allTables.add(table);        
        } else {
          allTables.remove(table);
          myTables.add(table);
        }
      });
    };
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _controller.forward();

    myTables = ["12", "3", "9"];
    var all = ["1", "2", "4", "5", "6", '7', '8', '10', '11'].toSet();
    allTables.addAll(all);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _EditingMode mode = Provider.of<_EditingMode>(context);
    final size = MediaQuery.of(context).size;
    final tileWidth = (size.width - _kCrossAxisSpacing - _kHorizontalPadding * 2) / 2;
    final ratio = tileWidth / MenuButton.kDefaultHeight;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          icon: Image(image: AssetImage('assets/icons/arrow_left.png')),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: _kHorizontalPadding),
        child: ListView(
          children: <Widget>[
            Text("Welcome, Alex",
              style: TextStyle(fontSize: 36.0, color: Color.fromRGBO(190, 190, 190, 1)),  
            ),
            Row(
              children: <Widget>[
                Text("Your Tables", style: TextStyle(color: Colors.white)),
                FlatButton(
                  onPressed: () => mode.isEditing = !mode.isEditing, 
                  child: Text(mode.isEditing? "Save": "Edit",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: _kCrossAxisSpacing,
              mainAxisSpacing: _kMainAxisSpacing,
              childAspectRatio: ratio,
              children: myTables.map<_TableTile>((String id) =>
                _TableTile(id: id,
                  isMyTable: true,
                  onPressedEditing: _onPressedEditing(id),
                  onPressedNormal: _onPressedNormal(id),
                )
              ).toList(),
              shrinkWrap: true,
              primary: false,
              addAutomaticKeepAlives: true,
            ),
            Text("All Tables", style: TextStyle(color: Colors.white),),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: _kCrossAxisSpacing,
              mainAxisSpacing: _kMainAxisSpacing,
              childAspectRatio: ratio,
              children: allTables.map<_TableTile>((String id) =>
                _TableTile(id: id,
                  isMyTable: false,
                  onPressedEditing: _onPressedEditing(id),
                  onPressedNormal: _onPressedNormal(id),
                )
              ).toList(),
              shrinkWrap: true,
              primary: false,
              addAutomaticKeepAlives: true,
            )
          ],
        ),
      )
    );
  }

}

class _TableTile extends StatelessWidget {

  final String id;
  final bool isMyTable;
  final void Function() onPressedNormal;
  final void Function() onPressedEditing;

  _TableTile({
    @required this.id,
    @required this.onPressedNormal,
    @required this.onPressedEditing,
    @required this.isMyTable,
  });

  @override
  Widget build(BuildContext context) {
    final _EditingMode mode = Provider.of<_EditingMode>(context);
    IconData icon;
    Color color;
    if (this.isMyTable) {
      icon = Icons.remove_circle;
      color = Color.fromRGBO(188, 75, 75, 1);
    } else {
      icon = Icons.add_circle;
      color = Color.fromRGBO(113, 175, 64, 1);
    }

    return MenuButton(
      align: Alignment.center,
      text: this.id,
      onPressed: mode.isEditing? this.onPressedEditing: this.onPressedNormal,
      overlay: Visibility(visible: mode.isEditing,
        child: Container(
          alignment: Alignment.centerLeft,
          child: Icon(icon, color: color),
          padding: EdgeInsets.only(left: 12.0),
        ),
      ),
      borderSide: BorderSide(color: Theme.of(context).accentColor),
    );
  }
}

class _EditingMode extends ChangeNotifier {
  bool _isEditing = false;

  bool get isEditing => _isEditing;

  set isEditing(bool editing) {
    _isEditing = editing;
    notifyListeners();
  }
}