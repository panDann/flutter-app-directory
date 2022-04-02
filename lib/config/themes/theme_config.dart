

import 'package:flutter/material.dart';



class MapTheme {
  var type = Brightness.light;
  ThemeData get theme {
    return  ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.orange ,
        accentColor: Colors.greenAccent,
        backgroundColor: Colors.pink,
        brightness: type,

      ),
      appBarTheme:const  AppBarTheme(
        // toolbarHeight: 40,
        // backgroundColor: Colors.greenAccent,

      ),
      snackBarTheme:const  SnackBarThemeData(
        backgroundColor: Colors.pink,

      ),
    );
  }

}