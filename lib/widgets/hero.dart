import 'package:flutter/material.dart';
import 'package:maple_joe/constants/assest_path.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext ctx){
    return MaterialApp(
        title: 'hero',
        home:MainPage()
    );
  }
}

class MainPage extends StatelessWidget{
  const MainPage({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title: Text('main'),
        ),
        body:GestureDetector(
          onTap: ()=>{
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const DetailScreen();
            }))
          },
          child: Hero(
            tag: "main",
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        )
    );
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title: const Text('detail'),
        ),
        body:GestureDetector(
          onTap: ()=>{
            Navigator.pop(context)
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