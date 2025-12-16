import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

final ThemeData smartStrideTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: const Color(0xFF2196F3),
  scaffoldBackgroundColor: Colors.white,
  textTheme: GoogleFonts.robotoTextTheme(), 
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF2196F3),
    foregroundColor: Colors.white,
  ),
);