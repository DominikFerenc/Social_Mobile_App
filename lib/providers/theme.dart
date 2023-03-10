import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isLightTheme;

  ThemeProvider({required this.isLightTheme});

  ThemeData get getThemeData => isLightTheme ? darkTheme : lightTheme;

  set setThemeData(bool val) {
    if (val) {
      isLightTheme = true;
    } else {
      isLightTheme = false;
    }
    notifyListeners();
  }
}

//theme
final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Color(0xFF141517),
  brightness: Brightness.dark,
  backgroundColor: Color(0xFF17191f),
  //backgroundColor: Color(0x3b3b3b),
  unselectedWidgetColor: Color(0xFF323232),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  // dividerColor: Colors.white,
  canvasColor: Color(0xFF17191f),
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  accentColor: Colors.black,
  unselectedWidgetColor: Color(0xFF323232),
  accentIconTheme: IconThemeData(color: Colors.white),

  //dividerColor: Colors.white54,
  //canvasColor: Colors.white60,
);
