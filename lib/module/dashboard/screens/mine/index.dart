import 'package:flutter/material.dart';

// import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:maple_joe/constants/assest_path.dart';
import 'package:maple_joe/widgets/virtual_webview.dart';

// import 'package:html/dom.dart' as dom;
// import 'package:maple_joe/widgets/virtual_webview.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class MineScreen extends StatefulWidget {
  const MineScreen({Key? key}) : super(key: key);

  @override
  _MineScreen createState() => _MineScreen();
}

class _MineScreen extends State<MineScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController searchContr = TextEditingController();
  var searchUrl = '';

  onSearch() async {
    // if (_formKey.currentState!.validate()) {
    //
    // }
    // var res = await GetConnect()
    //     .get('https://www.baidu.com/s?wd=' + searchContr.text);
    if (searchContr.text != '') {
      setState(() {
        searchUrl = 'http://cn.bing.com?q=' + searchContr.text;
      });
    }
  }

  getsearchUrl() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
      Container(
        child: Image.asset(imageURL['girl']),
      ),
      Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Phone'),
            ),
          ],
        ),
      )
    ],),) 
    ;
  }
}
