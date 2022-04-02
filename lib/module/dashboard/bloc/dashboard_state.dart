import 'package:get/get.dart';

class Controller extends GetxController{

  var currentTabIndex = 0.obs;

  transferTab(int index){
    currentTabIndex.value = index ;
  }
}