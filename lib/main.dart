import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/theme.dart';
import 'navigation/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SmartStrideApp());
}

class SmartStrideApp extends StatelessWidget {
  const SmartStrideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SmartStride',
      debugShowCheckedModeBanner: false,
      theme: smartStrideTheme,
      darkTheme: smartStrideTheme,
      themeMode: ThemeMode.light,
      routerConfig: appRouter,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
          child: SafeArea(child: child!),
        );
      },
    );
  }
}