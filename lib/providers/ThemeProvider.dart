import 'package:flutter/material.dart';
import 'package:newsapp/Core/PrefsHelper.dart';
//observer pattern
class ThemeProvider extends ChangeNotifier{

  ThemeMode currenttheme=ThemeMode.light;
  initTheme(){
    bool isDark=PrefsHelper.getTheme();
    if(isDark){
      currenttheme=ThemeMode.dark;
    }else{
      currenttheme=ThemeMode.light;
    }
  }
  changeTheme(ThemeMode newtheme){
    currenttheme=newtheme;
    if(currenttheme==ThemeMode.dark){
      PrefsHelper.settheme(true);
    }
    else{
      PrefsHelper.settheme(false);
    }
    notifyListeners();
  }
}