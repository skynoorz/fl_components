import 'package:flutter/material.dart'
    show AppBarTheme, Color, Colors, ElevatedButton, ElevatedButtonThemeData, FloatingActionButtonThemeData, StadiumBorder, TextButton, TextButtonThemeData, ThemeData;

class AppTheme {
  static Color primary = Colors.orange;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: Colors.redAccent,

      //AppBar THeme
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)
      ),

      //Floating action buttons
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 10
      ),

      //Elevated buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 10
        )
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
