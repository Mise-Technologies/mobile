import 'package:flutter/material.dart';
import 'package:moPass/components/clear_button.dart';
import 'package:moPass/components/menuitem_page.dart';
import 'package:moPass/data.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:provider/provider.dart';
import 'package:moPass/components/filter_popout.dart';
import 'package:moPass/models/dish.dart';

class MenuItemScreen extends StatelessWidget {
  final category;

  MenuItemScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FilterData>(
      builder: (_) => FilterData(),
      child: MenuItemScreenImpl(category)
    );
  }
}

class MenuItemScreenImpl extends StatefulWidget {
  final category;

  MenuItemScreenImpl(this.category);

  @override
  _MenuItemScreenState createState() => _MenuItemScreenState();
}

class _MenuItemScreenState extends State<MenuItemScreenImpl> with SingleTickerProviderStateMixin {
  TabController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this, 
      length: MENU_CATEGORIES.length,
      initialIndex: MENU_CATEGORIES.indexOf(widget.category)
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final FilterData filterData = Provider.of<FilterData>(context);
    // final hiddenCount = filterData.excluded.length;
    final hiddenCount = filterData.checkedItemCount;
    
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar( 
        leading: new IconButton(
          icon: Image(image: AssetImage('assets/icons/arrow_left.png')),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        backgroundColor: Theme.of(context).accentColor,
        actions: <Widget>[ 
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              _scaffoldKey.currentState.openEndDrawer();
            }
          )
        ],
        bottom: TabBar( //scrollable tabs
          controller: _controller,
          isScrollable: true,
          indicator: UnderlineTabIndicator(),
          tabs: MENU_CATEGORIES.map<Tab>(
            (String category) => Tab(text: category)
          ).toList(),
        ),
      ),
      endDrawer: Drawer(child: FilterPopout(() {
        // WidgetsBinding.instance.addPostFrameCallback((_){
        //   if (!_scaffoldKey.currentState.isEndDrawerOpen) {
        //     filterData.saveFilter();
        //   }
        // });
      })),
      body: Container(
        margin: EdgeInsets.only(top: 23.0, left: 15.0, right: 15.0),
        child: TabBarView(
          controller: _controller,
          children: MENU_CATEGORIES.map<Widget>((String category) {
            List<Dish> dishes = [];
            for (String dish in DISHES_BY_CATEGORIES[category]) {
              if (!filterData.excluded.contains(dish)) {
                dishes.add(DISHES[dish]);
              }
            }
            return MenuItemPage(dishes);  
          }).toList(),
        ),
      ),
      floatingActionButton: new Visibility(
        visible: filterData.excluded.isNotEmpty,
        child: Container(
          padding: EdgeInsets.only(bottom: 20.0),
          child: ClearButton(onPressed: filterData.clearFilter, hiddenCount: hiddenCount)
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
