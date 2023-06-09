import 'package:flutter/material.dart';

class MainRouteNavigator extends ChangeNotifier {
  late int _selectedIndex = 0;
  late PageController _pageController;
  late String _title;
  final List<Widget> routes = [
    
  ];

  MainRouteNavigator() {
    _pageController = PageController(initialPage: _selectedIndex);
  }

  get pageController => _pageController;
  get selectedIndex => _selectedIndex;
  get title => _title;

  void pageRouteNavigator(index) {
    _selectedIndex = index;
    _pageController.jumpToPage(_selectedIndex);
    notifyListeners();
  }

  void keepPage(){
    _pageController.jumpToPage(_selectedIndex);
    notifyListeners();
  }
}
