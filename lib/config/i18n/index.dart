import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/services.dart' as s;
import 'package:maple_joe/config/i18n/en_us.dart';
import 'package:maple_joe/config/i18n/zh_ch.dart';

var _en = json.encode;

Map<String,dynamic> getLangText(String screenName){
   return jsonDecode(screenName.tr);
}
class I18nMsg extends Translations {
  I18nMsg(){
    init();
  }
  String data ='';
  init() async{
    data= await s.rootBundle.loadString('assets/i18n/zh_ch.json');
  }
  @override
  Map<String, Map<String, String>> get keys =>
      {
        'zh_ch':langTextZhCh.map((key, value) => MapEntry(key, _en(value))),
        'en_us': langTextEnUs.map((key, value) => MapEntry(key, _en(value))),
      };
}
