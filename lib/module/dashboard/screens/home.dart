

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maple_joe/module/dashboard/bloc/dashboard_state.dart';
import 'package:maple_joe/module/dashboard/screens/map_search/index.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) :super(key: key);

  static List<Widget> _widgetOption = <Widget>[
    MapSearch(),
    Text('2222'),
  ];

  @override
  Widget build(BuildContext context) {
    final Controller ctl = Get.put(Controller());
    return Obx(() =>
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type:BottomNavigationBarType.shifting,
            items: <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.house),
                  label: 'bottomTabMain'.tr,
                  backgroundColor: Colors.greenAccent,
                  tooltip:'',
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label:'bottomTabMine'.tr,
                  backgroundColor: Colors.blue,
                  tooltip:'',
              ),
            ],
            currentIndex: ctl.currentTabIndex.value,
            onTap: ctl.transferTab,
          ),
          body: _widgetOption.elementAt(ctl.currentTabIndex.value),
        ));
  }
}
