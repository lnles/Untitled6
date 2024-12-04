import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled6/features/home/view/home_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key, this.child});

  final Widget? child;

  static final _widgetOptions = <WidgetOption>[
    WidgetOption(CupertinoIcons.house, 'Home', '/home'),
    WidgetOption(CupertinoIcons.heart, 'Likes', '/likes'),
    WidgetOption(CupertinoIcons.search, 'Search', '/search'),
    WidgetOption(CupertinoIcons.person_solid, 'Profile', '/profile'),
  ];

  static List<String> get _paths =>
      _widgetOptions.map((option) => option.path).toList();

  static List<GButton> get _tabs => _widgetOptions
      .map((option) => GButton(
            icon: option.icon,
            text: option.text,
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child ?? HomeScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: _tabs,
              selectedIndex: _calculateSelectedIndex(context),
              onTabChange: (index) => context.go(_paths[index]),
            ),
          ),
        ),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String path = GoRouterState.of(context).uri.path;
    int index = _paths.indexOf(path);
    return index >= 0 ? index : 0; // 默认返回第一个索引
  }
}

class WidgetOption {
  final IconData icon;
  final String text;
  final String path;

  WidgetOption(this.icon, this.text, this.path);
}
