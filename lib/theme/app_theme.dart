import 'package:flutter/material.dart'
    show AppBarTheme, Color, Colors, ThemeData;

class AppTheme {
  static Color primary = Colors.red;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: Colors.redAccent,

      //AppBar THeme
      appBarTheme: AppBarTheme(color: primary, elevation: 0)
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: Colors.redAccent,

      //AppBar THeme
      appBarTheme: const AppBarTheme(color: Colors.black, elevation: 0),
      scaffoldBackgroundColor: Colors.black
  );
}
