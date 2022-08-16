import 'package:flutter/material.dart';
import 'package:maple_joe/config/i18n/index.dart';

var tabs = getLangText('ranking')['tabs'];
class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  _MapSearch createState() => _MapSearch();
}

class _MapSearch extends State<RankingScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: tabs.length,
      child:Scaffold(
        appBar: AppBar(
          title: TabBar(
              labelColor: Colors.white,
              tabs:[
            for(var item in tabs)
              Tab(text: item,)
          ]) ,
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      )
    );
  }
}
