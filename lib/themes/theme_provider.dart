import 'package:flutter/material.dart';
import 'package:twitter_clone/themes/dark_mode.dart';
import 'package:twitter_clone/themes/light_mode.dart';


/*
THEME PROVIDER

TO HELP WITH LIGHT AND DARK MODE

*/

class ThemeProvider with ChangeNotifier {
  //Initially set to light mode
  ThemeData _themeData = lightMode;

  //Get the current theme
  ThemeData get themeData => _themeData;

  //Is it dark mode currently? 
  bool get isDarkMode => _themeData == darkMode;


  //set the theme
  set themeData(ThemeData themeData){
    _themeData = themeData;

    //Update UI
    notifyListeners();
  }

  //Toggle between dark and light mode
  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}

