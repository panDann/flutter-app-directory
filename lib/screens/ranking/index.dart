import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maple_joe/config/i18n/index.dart';
import 'package:maple_joe/services/index.dart';
import 'package:maple_joe/services/response_bodies.dart';

var tabs = getLangText('ranking')['tabs'];

class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  _MapSearch createState() => _MapSearch();
}

class _MapSearch extends State<RankingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(labelColor: Colors.white, tabs: [
              for (var item in tabs)
                Tab(
                  text: item,
                )
            ]),
          ),
          body: TabBarView(
            children: [
              FutureBuilder(
                  future: MapService.get<ZhihuHotRankingResBody>(
                      'https://www.zhihu.com/api/v3/feed/topstory/hot-lists/total?limit=50&desktop=true'),
                  builder: (BuildContext context, AsyncSnapshot snap) {
                    if (snap.connectionState == ConnectionState.waiting) {
                      return Icon(Icons.directions_transit);
                    } else {
                      return Icon(Icons.directions_bike);
                    }
                  }),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ));
  }
}
