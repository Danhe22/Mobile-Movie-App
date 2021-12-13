import 'package:flutter/material.dart';
import 'package:mobile_movie_app/main.dart';

class ThemeChanger with ChangeNotifier{

  bool _darkTheme = false;
  

  ThemeData? _currentTheme = Themes.light;

  bool get darkTheme => _darkTheme;
  

  ThemeData? get currentTheme => _currentTheme;

  set darkTheme(bool value){
    
    _darkTheme = value;

    if(value){
      _currentTheme = Themes.dark;
    }else{
      _currentTheme = Themes.light;
    }

    notifyListeners();
  }

  
}