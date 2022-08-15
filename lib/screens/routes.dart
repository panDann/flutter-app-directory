import 'package:flutter/cupertino.dart';
import 'package:maple_joe/screens/map_search/index.dart';
import 'package:maple_joe/screens/mine/index.dart';
import 'package:maple_joe/screens/ranking/index.dart';
import 'package:maple_joe/screens/stack.dart';

class MapRoute {
  static String initRoute = '/';
  MapRoute(BuildContext context){
    routes = <String,Widget Function(BuildContext)> {
      '/':(context)=>const StackScreen(),
      '/home':(context)=>const MapSearch(),
      '/ranking':(context)=>const RankingScreen(),
      '/mine':(context)=>const MineScreen(),
    };
  }
 var routes = <String,Widget Function(BuildContext)> {
  };
}