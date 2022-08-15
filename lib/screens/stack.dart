

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maple_joe/screens/map_search/index.dart';
import 'package:maple_joe/screens/mine/index.dart';
import 'package:maple_joe/screens/ranking/index.dart';
import 'package:maple_joe/store/global.dart';




class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) :super(key: key);

  static final List<Widget> _widgetOption = <Widget>[
   const MapSearch(),
    const RankingScreen(),
    const MineScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final MapController ctl = Get.put(MapController());
    return Obx(() =>
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type:BottomNavigationBarType.shifting, 
            items: <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.search_outlined),
                  label: 'main_bottomTab_search'.tr,
                  // backgroundColor: Colors.greenAccent,
                  tooltip:'',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.bar_chart),
                label: 'main_bottomTab_ranking'.tr,
                // backgroundColor: Colors.greenAccent,
                tooltip:'',
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label:'main_bottomTab_mine'.tr,
                  // backgroundColor: Colors.blue,
                  tooltip:'',
              ),
            ],
            currentIndex: ctl.currentTabIndex.value,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            onTap: (index)=>{
            ctl.transferTab(index),
          },
          ),
          body:IndexedStack(
            index: ctl.currentTabIndex.value,
            children: _widgetOption,
          ) ,
        ));
  }
}
