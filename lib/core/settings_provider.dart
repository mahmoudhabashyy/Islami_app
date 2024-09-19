import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLanguageCode ="ar";
  ThemeMode currentThemeMode = ThemeMode.light;

  void changeLanguageCode(String newLanguageCode){

    if(currentLanguageCode == newLanguageCode) return;
    currentLanguageCode =newLanguageCode;
    notifyListeners();
  }
  void changeThemeMode (ThemeMode newThemeMode){
    if(currentThemeMode == newThemeMode )return;

    currentThemeMode =newThemeMode;
    notifyListeners();
  }

  String getHomeBackgroung(){
    return currentThemeMode == ThemeMode.dark
        ?"assets/images/home_dark_background.png"
        :"assets/images/background_image.png";
  }

  bool isDark(){
    return currentThemeMode == ThemeMode.dark;
  }
}