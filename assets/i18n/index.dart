import 'package:get/get.dart';

class I18nMsg extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_ch': {
          'bottomTabMain': '主页',
          'bottomTabMine': '我的',
          'mainSearch': '搜索'
        },
        'en_us': {
          'bottomTabMain': 'main',
          'bottomTabMine': 'mine',
          'mainSearch': 'search'
        }
      };
}
