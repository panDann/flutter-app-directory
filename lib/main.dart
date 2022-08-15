import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maple_joe/config/i18n/index.dart';
import 'package:maple_joe/config/themes/theme_config.dart';
import 'package:maple_joe/screens/routes.dart';
import 'package:maple_joe/screens/stack.dart';
import 'package:maple_joe/store/global.dart';

void main() {

  // runApp(const GetMaterialApp(home: App(),) );
  runApp( GetMaterialApp(
      translations: I18nMsg(),
      // locale:const  Locale('en','us'),
      locale:const Locale('zh_cn'),
      home: App()));
}

class App extends StatelessWidget{
   App({Key? key}) : super(key: key);
  final MapController ctl = Get.put(MapController());
  @override
  Widget build(BuildContext context){
    return Obx(()=> MaterialApp(
      theme: MapTheme(type:ctl.theme.value).theme,
      title: 'hero',
      // home:const MainPage(),
      initialRoute: MapRoute.initRoute,
      routes: MapRoute(context).routes,
    ));
  }

}
