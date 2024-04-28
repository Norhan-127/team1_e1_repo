import 'package:dio/dio.dart';

class DioFactory{
  DioFactory._();
  static Dio? dio;

  static Future<Dio> getDio()async{
    if(dio == null){
      dio = Dio();
      return dio!;
    }else{
      return dio!;
    }
  }
}