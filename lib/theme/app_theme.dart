import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.amber.shade900;

  static final ThemeData darktheme = ThemeData.dark().copyWith(

      //color primario
      primaryColor: Colors.indigo,

      //AppBar Theme
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      scaffoldBackgroundColor: Colors.black);
}
