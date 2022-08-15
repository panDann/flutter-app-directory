import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maple_joe/constants/asset_path.dart';

void main() {
  runApp( const App());
}


class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue ,
          // accentColor: Colors.greenAccent,
          // backgroundColor: Colors.pink,
          // brightness: Brightness.dark,


        ),
        appBarTheme:const  AppBarTheme(
          toolbarHeight: 40,
          // backgroundColor: Colors.greenAccent,

        ),
        snackBarTheme:const  SnackBarThemeData(
          // backgroundColor: Colors.pink,

        ),


      ),
      title: 'hero',

      initialRoute: '/',
      routes: {
        '/': (context) =>  MainPage(),
        '/detail': (context) => const DetailScreen(),
      },
    );
  }

}

class ScreenArgument {
  final String title;
  ScreenArgument( this.title);
}

class EObx {

}
class MainPage extends StatefulWidget {

  @override
  _MainPage createState()=>_MainPage();
}


class _MainPage extends State<MainPage>{
  double count = 200;
  increment(){
    setState(() {
      count+=100;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:SelectableText('main-${count}'),
      ),
      body:GestureDetector(
        onTap: (){
          increment();
          _generateBackMsg(context);
        },

        child:Hero(
          tag: "main",
          child: Image.network(
            'https://picsum.photos/250?image=9',
            width: count,
          ),
        ) ,
      ),
      floatingActionButton: FloatingActionButton(child:const Text('add') ,onPressed: increment,),
    );
  }
  void _generateBackMsg(BuildContext context) async{
    final rsl = await Navigator.pushNamed(context, '/detail',arguments: ScreenArgument('girl'));
    // ScaffoldMessenger.of(context)
    // ..removeCurrentSnackBar()
    // ..showSnackBar(SnackBar(content: Text('$rsl')));
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    final agrs = ModalRoute.of(context)!.settings.arguments as ScreenArgument;
    // final Controller ctl = Get.find();

    return Scaffold(
        appBar:AppBar(
          title: Text(agrs.title),
        ),
        body:GestureDetector(
          onTap: ()=>{
            Navigator.pop(context,'hi boy')
          },
          child: Hero(
            tag: "main",
            child: Image.asset(
              imageURL['girl'],
            ),
          ),
        )
    );
  }
}