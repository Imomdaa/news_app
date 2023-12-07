import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.lightBlue),
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        centerTitle: false,
        // backgroundColor: Colors.transparent,
        // elevation: 0.0,
      ),
      textTheme: TextTheme(
      ));

  static ThemeData darkTheme = ThemeData();
}
