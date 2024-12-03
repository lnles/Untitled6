import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled6/feature/auth/view/login_screen.dart';
import 'package:untitled6/feature/home/view/details_screen.dart';
import 'package:untitled6/feature/home/view/home_screen.dart';
import 'package:untitled6/feature/home/view/likes_screen.dart';
import 'package:untitled6/feature/home/view/navigation_screen.dart';
import 'package:untitled6/feature/home/view/profile_screen.dart';
import 'package:untitled6/feature/home/view/search_screen.dart';
import 'package:untitled6/feature/home/view/settings_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) => NavigationScreen(child: child),
      routes: [
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) => HomeScreen(),
        ),
        GoRoute(
          path: '/likes',
          builder: (BuildContext context, GoRouterState state) => LikesScreen(),
        ),
        GoRoute(
          path: '/search',
          builder: (BuildContext context, GoRouterState state) => SearchScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) => ProfileScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state)=> NavigationScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
      redirect: (context, state) {
        // if (AuthService.getCurrentUser() != null) {
        //   return '/home';
        // }
        return null;
      },
    ),
    GoRoute(
      path: '/details',
      builder: (BuildContext context, GoRouterState state) => DetailsScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) => SettingsScreen(),
    ),
  ],
);
