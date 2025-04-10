import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/Core/ColorsManager.dart';

class AppStyle{
  static ThemeData lightTheme=ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(fontWeight: FontWeight.w500,
          fontSize:20.sp,
          color: ColorsManager.secondary_light),

    ),
    colorScheme: ColorScheme.light(
      primary: ColorsManager.primary_light,
      secondary: ColorsManager.secondary_light
    ),
    textTheme: TextTheme(titleMedium: TextStyle(fontSize:24.sp,color: ColorsManager.secondary_light,),
        titleSmall: TextStyle(fontSize:20.sp,color: ColorsManager.primary_light,)),


  );
  static ThemeData DarkTheme=ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(fontWeight: FontWeight.w500,
          fontSize:20.sp,
          color: ColorsManager.secondary_dark),

    ),
      textTheme: TextTheme(titleMedium: TextStyle(fontSize:24.sp,color: ColorsManager.secondary_dark)
        ,titleSmall: TextStyle(fontSize:20.sp,color: ColorsManager.primary_dark,),
      ),
    colorScheme: ColorScheme.dark(
        primary: ColorsManager.primary_dark,
        secondary: ColorsManager.secondary_dark
    ),


  );
}