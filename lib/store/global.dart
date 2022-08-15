import 'dart:ui';

import 'package:get/get.dart';

class MapController extends GetxController{

  var currentTabIndex = 0.obs;
  var theme = Brightness.light.obs;
  var lang = 'zh_ch'.obs;

  transferTab(int index){
    currentTabIndex.value = index ;
  }
  transferLang(String lan){
    lang.value = lan ;
  }


  transferTheme(){
    if(theme.value ==Brightness.light){
      theme.value = Brightness.dark;
      return;
    }
    if(theme.value ==Brightness.dark){
      theme.value = Brightness.light;
      return;
    }
  }
}