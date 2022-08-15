import 'package:flutter/material.dart';

class Util {
  const Util();
 static print(BuildContext context,String msg){
   showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
     title: const Text('Print msg'),
     content:   Text(msg),
     actions: <Widget>[
       TextButton(
         onPressed: () => Navigator.pop(context, 'Close'),
         child: const Text('Cancel'),
       ),
     ],
   ));

  }
}