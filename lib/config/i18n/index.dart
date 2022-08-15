import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/services.dart' as s;


class I18nMsg extends Translations {
  I18nMsg(){
    init();
  }
  String data ='';
  init() async{
    print(222);
    data= await s.rootBundle.loadString('assets/i18n/zh_ch.json');
  }
  @override
  Map<String, Map<String, String>> get keys =>

      {
        'zh_ch': {
          'main_bottomTab_search': '搜索',
          'main_bottomTab_ranking': '排行',
          'main_bottomTab_mine': '我的',
          'main_search_text': '搜索'
        },
        'en_us': {
          'main_bottomTab_search': 'search',
          'main_bottomTab_ranking': 'ranking',
          'main_bottomTab_mine': 'mine',
          'main_search_text': 'search'
        }
      };
}
