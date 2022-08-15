import 'package:flutter/cupertino.dart';

const Map imageURL = {'girl' : 'assets/images/girl.jpg'};

class ImagePath {
  String operator [](String name){
    return imageURL[name];
  }

  static get (String name){
      return imageURL[name];
  }
}

