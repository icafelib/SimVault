import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';
import '../features/numbers/numbers_page.dart';
import '../features/discover/discover_page.dart';
import '../features/profile/profile_page.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _index = 0;

  static const _pages = <Widget>[
    NumbersPage(),
    DiscoverPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.sim_card_outlined),
              selectedIcon: Icon(Icons.sim_card, color: AppColors.primary),
              label: '号码'),
          NavigationDestination(
              icon: Icon(Icons.explore_outlined),
              selectedIcon: Icon(Icons.explore, color: AppColors.primary),
              label: '发现'),
          NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person, color: AppColors.primary),
              label: '我的'),
        ],
      ),
    );
  }
}
