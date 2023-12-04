import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('the initial url: $url body: not exist in get request token: $token');
    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      print('the result ${jsonDecode(response.body)}');
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'status code error: ${response.statusCode}, body error: ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('the initial url: $url body: $body token: $token');
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      print('the result ${jsonDecode(response.body)}');
      return (jsonDecode(response.body));
    } else {
      throw Exception(
          'status code error: ${response.statusCode}, body error: ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('the initial url: $url body: $body token: $token');
    http.Response response =
        await http.put(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      print('the result ${jsonDecode(response.body)}');
      return (jsonDecode(response.body));
    } else {
      throw Exception(
          'status code error: ${response.statusCode}, body error: ${jsonDecode(response.body)}');
    }
  }
}


/*
 write request

 handel request

 print response
*/
