import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maple_joe/assets/i18n/index.dart';
import 'package:maple_joe/module/dashboard/screens/home.dart';

void main() {
  // runApp(const GetMaterialApp(home: App(),) );
  runApp( GetMaterialApp(
      translations: I18nMsg(),
      locale:const  Locale('zh','ch'),
      home:const App()) );
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue ,
          accentColor: Colors.greenAccent,
          // backgroundColor: Colors.pink,
          // brightness: Brightness.dark,


        ),
        appBarTheme:const  AppBarTheme(
          // toolbarHeight: 40,
          // backgroundColor: Colors.greenAccent,

        ),
        snackBarTheme:const  SnackBarThemeData(
          backgroundColor: Colors.pink,

        ),


      ),
      title: 'hero',
      // home:const MainPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
      },
    );
  }

}
