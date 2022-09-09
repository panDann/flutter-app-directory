
import 'package:maple_joe/services/index.dart';
import 'package:maple_joe/services/response_bodies.dart';

class RankingServ {
  static getZhihuRanking() {
    return  MapService.get<Map<String,dynamic>>(
        'https://www.zhihu.com/api/v3/feed/topstory/hot-lists/total?limit=20&desktop=true');
  }
}