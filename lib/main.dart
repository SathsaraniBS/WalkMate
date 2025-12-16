// lib/main.dart
// This file combines the functionality of the original index.ts and App.tsx
// It serves as the entry point of the Flutter application and sets up all root providers.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // For potential future state management (optional)
import 'package:flutter/foundation.dart';
import 'package:safe_area/insets.dart'; // Not directly needed in Flutter – handled by SafeArea widget
import 'package:google_fonts/google_fonts.dart'; // Optional: for better typography if desired

import 'core/theme.dart';
import 'navigation/app_router.dart';

void main() {
  // Equivalent to Expo's registerRootComponent
  // Ensures the Flutter app starts correctly in all environments
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const SmartStrideApp());
}

class SmartStrideApp extends StatelessWidget {
  const SmartStrideApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SmartStride',
      debugShowCheckedModeBanner: false,
      theme: smartStrideTheme, // Defined in lib/core/theme.dart (equivalent to theme.ts + StyledProvider)
      darkTheme: smartStrideTheme, // Currently light-only; add dark theme later if needed
      themeMode: ThemeMode.light,

      // Router configuration – equivalent to AppNavigator.tsx
      routerConfig: appRouter, // GoRouter instance defined in lib/navigation/app_router.dart

      // Optional: Global builder for consistent safe area and padding
      builder: (context, child) {
        return MediaQuery(
          // Ensures text scales according to system settings (optional – can be removed if not desired)
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: SafeArea(
            // Equivalent to SafeAreaProvider + react-native-safe-area-context
            child: child!,
          ),
        );
      },
    );
  }
}