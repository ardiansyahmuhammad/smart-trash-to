// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Constants {
  // Primary color
  static var primaryColor = const Color(0xff296e48);
  static var blackColor = Colors.black54;

  // Onboarding texts
  static var titleOne = "Explore the World of Smart Trashbins";
  static var descriptionOne =
      "Understand the significance of smart trashbins and their impact on the environment.";

  static var titleTwo = "Smart Waste Sorting";
  static var descriptionTwo =
      "Learn about the importance of waste segregation and how smart trashbins facilitate proper waste sorting.";

  static var titleThree = "Efficient Waste Collection";
  static var descriptionThree =
      "Discover the advanced methods and technologies used for efficient waste transportation and disposal.";

  static String appName = "Trash To";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color? lightAccent = Colors.blueGrey[900];
  static Color darkAccent = Colors.white;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

  static ThemeData lightTheme = ThemeData(
    // ignore: deprecated_member_use
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    hintColor: lightAccent,
    cardColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );
}
