


import 'package:dio/dio.dart';

BaseOptions op = BaseOptions(
  connectTimeout: 3000,
  receiveTimeout: 3000,
);



var dioIns = Dio(op);
void test()async{
  var res =await dioIns.get('https://www.zhihu.com/api/v3/feed/topstory/hot-lists/total?limit=50&desktop=true');
      print('111: $res');
}
class MapService {

  static var get = dioIns.get;
  static var post = dioIns.post;
}