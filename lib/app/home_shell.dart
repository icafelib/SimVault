import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';
import '../features/numbers/numbers_page.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _index = 0;

  static const _pages = <Widget>[
    NumbersPage(),
    _PlaceholderTab(title: '套餐'),
    _PlaceholderTab(title: '提醒'),
    _PlaceholderTab(title: '资产'),
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
              icon: Icon(Icons.receipt_long_outlined),
              selectedIcon:
                  Icon(Icons.receipt_long, color: AppColors.primary),
              label: '套餐'),
          NavigationDestination(
              icon: Icon(Icons.notifications_outlined),
              selectedIcon:
                  Icon(Icons.notifications, color: AppColors.primary),
              label: '提醒'),
          NavigationDestination(
              icon: Icon(Icons.account_balance_wallet_outlined),
              selectedIcon: Icon(Icons.account_balance_wallet,
                  color: AppColors.primary),
              label: '资产'),
        ],
      ),
    );
  }
}

class _PlaceholderTab extends StatelessWidget {
  const _PlaceholderTab({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('$title 模块即将上线',
            style: const TextStyle(color: AppColors.secondary)),
      ),
    );
  }
}
