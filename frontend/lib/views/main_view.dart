import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/main_view_model.dart';

import 'home_view.dart';
import 'history_view.dart';
import 'explore_view.dart';
import 'stats_view.dart';
import 'settings_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MainViewModel>(context);

    return Scaffold(
      body: PageView(
        controller: viewModel.pageController,
        onPageChanged: viewModel.onPageChanged,
        children: const [
          HomeView(),
          HistoryView(),
          ExploreView(),
          StatsView(),
          SettingsView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.currentTabIndex,
        onTap: (index) => viewModel.selectTab(BottomNavTab.values[index]),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
