import 'package:flutter/material.dart';

import '../models/product.dart';

class MainViewModel extends ChangeNotifier{
  List<Product> products=[];
  List<NavigationRailDestination> destinations=[
    NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
    NavigationRailDestination(icon: SizedBox.shrink(), label: Text('Products')),
    NavigationRailDestination(icon: SizedBox.shrink(), label: Text('Categories')),
    NavigationRailDestination(icon: SizedBox.shrink(), label: Text('Suppliers')),
    NavigationRailDestination(icon: SizedBox.shrink(), label: Text('Customers')),
    NavigationRailDestination(icon: SizedBox.shrink(), label: Text('Stock Adjustment')),
  ];
  int _selectedIndex=0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }


}