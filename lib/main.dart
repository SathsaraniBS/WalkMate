import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/track_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/report_screen.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/track',
      builder: (context, state) => const TrackScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationsScreen(),
    ),
    GoRoute(
      path: '/report',
      builder: (context, state) => const ReportScreen(),
    ),
  ],
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WalkMateApp());
}

class WalkMateApp extends StatelessWidget {
  const WalkMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WalkMate',
      debugShowCheckedModeBanner: false,
      routerConfig: _router, // This enables context.go()
    );
  }
}