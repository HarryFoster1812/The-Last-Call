import 'package:flutter/material.dart';

enum BottomNavTab { home, history, explore, stats, settings }

class MainViewModel extends ChangeNotifier {
  BottomNavTab _currentTab = BottomNavTab.home;
  PageController pageController = PageController(initialPage: 0);

  BottomNavTab get currentTab => _currentTab;

  void selectTab(BottomNavTab tab) {
    final index = BottomNavTab.values.indexOf(tab);
    pageController.jumpToPage(index);
    _currentTab = tab;
    notifyListeners();
  }

  void onPageChanged(int index) {
    _currentTab = BottomNavTab.values[index];
    notifyListeners();
  }

  int get currentTabIndex => BottomNavTab.values.indexOf(_currentTab);

  void disposeController() {
    pageController.dispose();
  }
}
