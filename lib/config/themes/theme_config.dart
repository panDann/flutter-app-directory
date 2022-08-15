

import 'package:flutter/material.dart';

class MapTheme {
  // var type = Brightness.light;
  var type = Brightness.dark;
  MapTheme({this.type = Brightness.dark});
  ThemeData get theme {

    const MaterialColor myColor = MaterialColor(0x18FFFFFF,{0:Color(0x18FFFFFF)});
    return  ThemeData(
      primaryColor: myColor,
      colorScheme: ColorScheme.fromSwatch(
        // primarySwatch:Color.fromRGBO(77, 222, 201, 0),
        // primarySwatch:myColor,
        primaryColorDark: Colors.cyanAccent,
        accentColor: Colors.greenAccent,
        // backgroundColor: Colors.pink,
        errorColor: Colors.pink,
        brightness: type,
      ),
      appBarTheme:const  AppBarTheme(
        // toolbarHeight: 40,
        // backgroundColor: Colors.greenAccent,

      ),
      bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          backgroundColor: Colors.grey,
          unselectedIconTheme: IconThemeData(
            color: Colors.grey
          )
      ),
      snackBarTheme:const  SnackBarThemeData(
        backgroundColor: Colors.pink,

      ),
    );
  }

}