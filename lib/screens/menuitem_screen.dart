import 'package:flutter/material.dart';
import 'package:moPass/components/clear_button.dart';
import 'package:moPass/components/menuitem_page.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:moPass/models/menu_data.dart';
import 'package:moPass/providers/filter_data_provider.dart';
import 'package:provider/provider.dart';
import 'package:moPass/components/filter_popout.dart';
import 'package:moPass/models/dish.dart';

class MenuItemScreen extends StatelessWidget {

  final FilterData filterData;
  final MenuData menu;

  MenuItemScreen(this.filterData, this.menu);

  @override
  Widget build(BuildContext context) {
    return FilterDataProvider.value(
      notifier: filterData,
      child: _MenuItemScreen(menu)
    );

  }
}

class _MenuItemScreen extends StatefulWidget {
  final MenuData menu;

  _MenuItemScreen(this.menu);

  @override
  _MenuItemScreenState createState() => _MenuItemScreenState();
}

class _MenuItemScreenState extends State<_MenuItemScreen> with SingleTickerProviderStateMixin {
  TabController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this, 
      length: widget.menu.categories.length,
      initialIndex: 0
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
          tabs: widget.menu.categories.map<Tab>(
            (String category) => Tab(text: category)
          ).toList(),
        ),
      ),
      endDrawer: Drawer(child: FilterPopout(widget.menu,
        // onCloseListener: () {
        //   WidgetsBinding.instance.addPostFrameCallback((_){
        //     if (!_scaffoldKey.currentState.isEndDrawerOpen) {
        //       filterData.saveFilter();
        //     }
        //   });
        // }
        )
      ),
      body: TabBarView(
        controller: _controller,
        children: widget.menu.categories.map<Widget>((String category) {
          List<Dish> dishes = [];
          for (Dish dish in widget.menu.dishesByCategory[category]) {
            if (!filterData.excluded.contains(dish.name)) {
              dishes.add(dish);
            }
          }
          return MenuItemPage(dishes);  
        }).toList(),
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
