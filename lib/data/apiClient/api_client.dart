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

  dynamic getHiveValue(quantity, token) async {
    String url =
        "https://api.coingecko.com/api/v3/simple/price?ids=hive&vs_currencies=usd&include_24hr_change=true";
    if (token == "HBD") {
      url =
          "https://api.coingecko.com/api/v3/simple/price?ids=hive_dollar&vs_currencies=usd&include_24hr_change=true";
    }

    Map<String, String> headers = {
      "accept": "application/json, text/plain, */*",
      "accept-language": "es-US,es-CO;q=0.9,es-419;q=0.8,es;q=0.7",
      "if-none-match": "W/\"27597630ab605f8219c5372d51c4751e\"",
      "sec-ch-ua":
          "\"Chromium\";v=\"112\", \"Google Chrome\";v=\"112\", \"Not:A-Brand\";v=\"99\"",
      "sec-ch-ua-mobile": "?1",
      "sec-ch-ua-platform": "\"Android\"",
      "sec-fetch-dest": "empty",
      "sec-fetch-mode": "cors",
      "sec-fetch-site": "cross-site"
    };

    Response response = await this.get(url, headers: headers);

    String r = "";
    if (token == "HBD") {
      r = (double.parse(quantity) / response.body['hive_dollar']['usd'])
          .toStringAsFixed(3);
    } else {
      r = (double.parse(quantity) / response.body['hive']['usd'])
          .toStringAsFixed(3);
    }

    return r;
  }
}
