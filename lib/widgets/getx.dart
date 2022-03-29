import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maple_joe/constants/assest_path.dart';

void main() {
  runApp(const GetMaterialApp(home:  App()));
}

class Controller extends GetxController {
  var count = 200.obs;
  increment()=>count+=100;
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
          brightness: Brightness.dark,


        ),
        appBarTheme:const  AppBarTheme(
            toolbarHeight: 40,
            // backgroundColor: Colors.greenAccent,

        ),
          snackBarTheme:const  SnackBarThemeData(
              backgroundColor: Colors.pink,

          ),


      ),
      title: 'hero',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
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

class MainPage extends StatelessWidget{
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final Controller ctl = Get.put(Controller());
    return Scaffold(
        appBar:AppBar(
          title:Obx(()=>SelectableText('main-${ctl.count}')),
        ),
        body:GestureDetector(
          onTap: (){
            ctl.increment();
            _generateBackMsg(context);
          },

          child:Obx(()=>Hero(
            tag: "main",
            child: Image.network(
              'https://picsum.photos/250?image=9',
              width: 222,
            ),
          )) ,
        ),
        floatingActionButton: FloatingActionButton(child:const Text('add') ,onPressed: ctl.increment,),
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
    final Controller ctl = Get.find();

    return Scaffold(
      appBar:AppBar(
        title:  Obx(()=>Text(agrs.title+'${ctl.count}')),
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