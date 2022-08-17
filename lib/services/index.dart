


import 'package:dio/dio.dart';

BaseOptions op = BaseOptions(
  connectTimeout: 10000,
  receiveTimeout: 5000,
);


var dioIns = Dio(op);

class MapService {

  static var get = dioIns.get;
  static var post = dioIns.post;
}