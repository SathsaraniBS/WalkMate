// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'screens/login_screen.dart';
// import 'screens/home_screen.dart';
// import 'screens/track_screen.dart';
// import 'screens/settings_screen.dart';
// import 'screens/notifications_screen.dart';


// import 'core/theme.dart';
// import 'navigation/app_router.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const SmartStrideApp());
// }

// class SmartStrideApp extends StatelessWidget {
//   const SmartStrideApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       title: 'SmartStride',
//       debugShowCheckedModeBanner: false,
//       theme: smartStrideTheme,
//       darkTheme: smartStrideTheme,
//       themeMode: ThemeMode.light,
//       routerConfig: appRouter,
//       builder: (context, child) {
//         return MediaQuery(
//           data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
//           child: SafeArea(child: child!),
//         );
//       },
//     );
//   }
// }

// lib/main.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/login_screen.dart';
import 'screens/home_screen.dart';        // Create these placeholder screens


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WalkMateApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(), // Placeholder
    ),
    // Add other routes as needed
  ],
);

class WalkMateApp extends StatelessWidget {
  const WalkMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WalkMate',
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}