import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
// import 'package:hive/hive.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {

  String ossUrl = kReleaseMode
      ? 'https://17platform.szwjs.com/'
      : 'https://oss.szwjs.com/';
  String baseUrl = kReleaseMode
      ? "https://szwjs.bzg1688.com"
      : "https://testszwjs.bzg1688.com";

  static final DioClient _instance = DioClient._internal();

  factory DioClient() {
    return _instance;
  }

  static DioClient get instance => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio()
      ..options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      );
    dio.interceptors.add(RequestInterceptors());
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: false,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        filter: (options, args) {
          // don't print requests with uris containing '/posts'
          if (options.path.contains('/posts')) {
            return false;
          }
          // don't print responses with unit8 list data
          return !args.isResponse || !args.hasUint8ListData;
        }));
  }

  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Response response = await dio.get(
      url,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<dynamic> post(
    String url, {
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    Response response = await dio.post(
      url,
      data: data ?? <String, dynamic>{},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<dynamic> put(
    String url, {
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    Response response = await dio.put(
      url,
      data: data ?? <String, dynamic>{},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<dynamic> delete(
    String url, {
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    Response response = await dio.delete(
      url,
      data: data ?? <String, dynamic>{},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response.data;
  }
}

class RequestInterceptors extends InterceptorsWrapper {

  static const String _userKey = "user";
  static const String _progKey = "prog";
  static const String _tokenKey = "${_userKey}key";
  static const String _apiUrlKey = "/small${_progKey}api/";

  static const bool _showCurl = true;

  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    var token = await getToken();
    var path =
        options.path.startsWith('/') ? options.path.substring(1) : options.path;
    options.path = "$_apiUrlKey$path";
    if (token!.isNotEmpty) {
      options.queryParameters[_tokenKey] = token;
      // options.headers['Authorization'] = "Bearer $token";
    }
    if (_showCurl) {
      log(_cURLRepresentation(options), name: 'CURL');
    }
    return handler.next(options);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  Future<String?> getToken() async {
    // return Hive.box('user').get('token');
    return "";
  }

  String _cURLRepresentation(RequestOptions options) {
    List<String> components = ['curl -i'];
    if (options.method.toUpperCase() != 'GET') {
      components.add('-X ${options.method}');
    }
    options.headers.forEach((k, v) {
      if (k != 'Cookie') {
        components.add('-H "$k: $v"');
      }
    });
    if (options.data != null) {
      if (options.data is FormData) {
        options.data = Map.fromEntries(options.data.fields);
      }
      final data = json.encode(options.data).replaceAll('"', '\\"');
      components.add('-d "$data"');
    }
    components.add('"${options.uri.toString()}"');
    return components.join('\t\\\n\t');
  }
}
