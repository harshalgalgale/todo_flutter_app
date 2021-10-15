import 'package:flutter/material.dart';

final MaterialColor _primarySwatch = Colors.purple;
final Color _primaryColor = Colors.purple[700]!;
final Color _appBarColor = Colors.purple[100]!;
final Color _appBarIconColor = Colors.black87;
final Color _foreGroundColor = Colors.white;

var lightThemeData = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.purple[200],
  primaryColor: _primaryColor,
  primarySwatch: _primarySwatch,
  indicatorColor: _primaryColor,
  iconTheme: IconThemeData(color: _primaryColor),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
    color: _appBarColor,
    iconTheme: IconThemeData(
      color: _appBarIconColor,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _primaryColor, foregroundColor: _foreGroundColor),
);
