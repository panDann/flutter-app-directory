

import 'package:flutter/material.dart';



class DarkTheme {

  ThemeData get theme {
    return  ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.orange ,
        accentColor: Colors.greenAccent,
        backgroundColor: Colors.pink,
        // brightness: Brightness.dark,


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