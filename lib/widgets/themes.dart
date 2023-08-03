import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lighTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      // fontFamily: GoogleFonts.lato().fontFamily,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => (ThemeData(
        brightness: Brightness.dark,
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluish = Color.fromARGB(255, 19, 2, 121);
}
