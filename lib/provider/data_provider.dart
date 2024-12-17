import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  String _selectedItem = 'Dashboard';

  String get selectedItem => _selectedItem;

  void setSelectedItem(String item) {
    _selectedItem = item;
    notifyListeners();
  }
}
