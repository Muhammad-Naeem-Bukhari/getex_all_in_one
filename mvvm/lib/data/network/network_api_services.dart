import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:mvvm/data/app_exeptions.dart';
import 'package:mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> get(String url, {Map<String, String>? headers}) async {
    dynamic responseJson;
    try {
      final response = await http
          .get(Uri.parse(url), headers: headers)
          .timeout(const Duration(seconds: 10));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw InternetConnectionException("No Internet");
    } on TimeoutException {
      throw RequestTimeoutException("Request took too long");
    } on HttpException {
      throw ServerException("Internal Server Error");
    }
    return responseJson;
  }

  @override
  Future<dynamic> post(String url,
      {Map<String, String>? headers, dynamic data}) async {
    dynamic responseJson;
    dynamic body = jsonEncode(data);
    try {
      final response = await http
          .post(Uri.parse(url), headers: headers, body: body)
          .timeout(const Duration(seconds: 10));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw InternetConnectionException("No Internet");
    } on TimeoutException {
      throw RequestTimeoutException("Request took too long");
    } on HttpException {
      throw ServerException("Internal Server Error");
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 500:
      default:
        throw ServerException(
            "Error occurred while Communication with Server with StatusCode : ${response.statusCode}");
    }
  }
}
