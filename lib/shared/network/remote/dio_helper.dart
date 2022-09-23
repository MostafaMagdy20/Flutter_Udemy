import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    required Map<String , dynamic> query
}) async
  {
    return await dio.get(
        url,
        queryParameters: query,
    );
  }
}



// https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=65f7f556ec76449fa7dc7c0069f040ca

//https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b09a5fbf2af64b71a5fe6fd787d1b9bf

/*
baseurl: https://newsapi.org/
method(url): v2/top-headlines?
query: country=us&category=business&apiKey=b09a5fbf2af64b71a5fe6fd787d1b9bf
* */

// key => b09a5fbf2af64b71a5fe6fd787d1b9bf