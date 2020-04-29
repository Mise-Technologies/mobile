import 'package:flutter/material.dart';
import 'package:moPass/models/filter_data.dart';
import 'package:provider/provider.dart';

class FilterDataProvider extends ChangeNotifierProvider<FilterData> {

  FilterDataProvider({
    child,
    @required data,
  }): super(child: child, builder: (_) => FilterData(data));

  FilterDataProvider.value({
    child,
    @required notifier,
  }): super.value(child: child, notifier: notifier);

}