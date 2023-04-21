// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:hive_payments/core/app_export.dart';

class ApiClient extends GetConnect {
  Future<Map<String, dynamic>> RequestsHiveData(String? url, dynamic body,
      {String? contentType,
      Map<String, String>? headers,
      Map<String, dynamic>? query}) async {
    var response = await this.post(url, body,
        headers: headers, query: query, contentType: contentType);

    return json.decode(response.body);
  }

  Future<Map<String, dynamic>> LoginData(username) async {
    var response = await this.post(
      "getLoginUrl",
      {"username": username},
    );

    return json.decode(response.body);
  }
}
