import 'package:flutter/material.dart';
import 'package:maple_joe/constants/asset_path.dart';
import 'package:maple_joe/utils/ui/ui_utils.dart';

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

  var searchUrl = '';
  final list = [
    [Icons.map, 'Map'],
    [Icons.photo_album, 'Album'],
    [Icons.settings, 'Phone'],
  ];

  getsearchUrl() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child:Stack(
              children: [
                const Positioned(
                  child: Text('maple'),
                  bottom: 20,
                  right: 20,
                )
              ],
            ),
            constraints: const BoxConstraints.expand(height: 300),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImagePath.get('girl')))),
          ),
          Expanded(
            child: ListView(padding: EdgeInsets.zero, children: [
              for (var item in list)
                ListTile(
                  leading: Icon(item[0] as IconData),
                  title: Text(item[1] as String),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  // shape: Border(bottom: BorderSide(color: Colors.grey.shade50)),
                  onTap: () => {
                    Util.print(context, '223332')
                  },
                )
            ]),
          )
        ],
      ),
    );
  }
}
