import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Search',
    ),
    Text(
      'Index 2: Profile',
    ),
    Text(
      'Index 3: Profile',
    ),
  ];
  void onItemTapped(int index) {
    rebuildUi();
    selectedIndex = index;
  }
}
