// lib/core/constants.dart
// This file contains all global constants for the SmartStride Flutter application.
// It includes colors, typography, spacing, API endpoints, and commonly used strings.

import 'package:flutter/material.dart';

// Primary color scheme (matching the original React Native theme.ts)
class AppColors {
  static const Color primary = Color(0xFF2196F3);        // Blue
  static const Color secondary = Color(0xFFFF9800);      // Orange
  static const Color background = Color(0xFFFFFFFF);     // White
  static const Color surface = Color(0xFFF5F5F5);
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color error = Color(0xFFF44336);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF2196F3);
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color divider = Color(0xFFBDBDBD);
}

// Spacing values (matching original theme.spacing)
class AppSpacing {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
}

// Border radius values
class AppRadius {
  static const double small = 4.0;
  static const double medium = 8.0;
  static const double large = 16.0;
  static const double round = 999.0;
}

// Font sizes
class AppFontSizes {
  static const double xs = 12.0;
  static const double sm = 14.0;
  static const double md = 16.0;
  static const double lg = 18.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;
}

// Commonly used strings
class AppStrings {
  static const String appName = 'SmartStride';
  static const String loginTitle = 'SmartStride';
  static const String loginSubtitle = 'Enter your Device ID to connect to your Smart Cane';
  static const String connectButton = 'Connect to Device';
  static const String verifying = 'Verifying...';
  static const String deviceIdPlaceholder = 'Enter your Device ID (e.g., SC-2334)';
  static const String homeTab = 'Home';
  static const String trackTab = 'Track';
  static const String settingsTab = 'Settings';
  static const String noNotifications = 'No notifications yet';
  static const String reportsTitle = 'SmartStride Reports';
}

// API and Firebase configuration
class ApiConstants {
  // Replace with your actual server IP or production domain
  static const String baseUrl = 'http://10.16.187.226:5000/api/device';

  // Endpoints
  static const String verifyDevice = '/verify';
  static const String latestReading = '/latest';
  static const String historical = '/historical';
  static const String dateRange = '/range';
  static const String falls = '/falls';
  static const String notifications = '/notifications';
  static const String unreadCount = '/notifications/unread';
}

// Google Maps API Key (used in platform-specific config, kept here for reference)
class MapsConstants {
  static const String googleMapsApiKey = 'AIzaSyAOeL-fUON761cUmmht44wZNFARhVozfe0';
}

// Firebase paths (for direct fallback if needed)
class FirebasePaths {
  static const String root = '/';
  static const String notifications = 'notifications';
}

// Default device data (used when offline or loading)
const Map<String, dynamic> defaultDeviceData = {
  'deviceId': 'unknown',
  'battery': 0,
  'steps': 0,
  'distance': 0,
  'location': {
    'latitude': 0.0,
    'longitude': 0.0,
    'timestamp': 0,
  },
  'status': {
    'connected': false,
    'lastConnected': 0,
    'fall': 'not detected',
  },
};