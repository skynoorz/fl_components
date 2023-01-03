import 'package:flutter/material.dart'
    show AppBarTheme, ButtonStyle, Color, Colors, TextButton, TextButtonThemeData, ThemeData;

class AppTheme {
  static Color primary = Colors.orange;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: Colors.redAccent,

      //AppBar THeme
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)
      )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: Colors.redAccent,

      //AppBar THeme
      appBarTheme: const AppBarTheme(color: Colors.black, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)
      ),
      scaffoldBackgroundColor: Colors.black
  );
}
