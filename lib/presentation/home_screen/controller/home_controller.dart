import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/home_screen/models/home_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/listellipsenine_item_model.dart';
import '../models/listhive_item_model.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  Future<void> onReady() async {
    super.onReady();
    homeModelObj.value.username = "infernalcoliseum";
    homeModelObj.refresh();
    homeModelObj.value.listhiveItemList = [
      await getDataValue(homeModelObj.value.username, "HIVE"),
      await getDataValue(homeModelObj.value.username, "HBD"),
      await getDataValue(homeModelObj.value.username, "SWAP.HIVE"),
    ];

    var data = await fetchData(homeModelObj.value.username, -1);

    homeModelObj.value.listellipsenineItemList = data;
    await loadMore();
    await loadMore();
    await loadMore();
    homeModelObj.refresh();
  }

  @override
  void onClose() {
    super.onClose();
  }

  loadMore() async {
    List<ListellipsenineItemModel> list =
        homeModelObj.value.listellipsenineItemList;
    List<ListellipsenineItemModel> newData = await fetchData(
        homeModelObj.value.username, homeModelObj.value.lastStack - 1000);

    list.addAll(newData);

    homeModelObj.value.listellipsenineItemList = list;
  }

  Future<String> getUsdValue(String coin, String value) async {
    if (coin == "HIVE" || coin == "SWAP.HIVE") {
      final response = await http.get(
        Uri.parse(
            "https://api.coingecko.com/api/v3/simple/price?ids=hive&vs_currencies=usd&include_24hr_change=true"),
        headers: {"referrerPolicy": "no-referrer", "mode": "cors"},
      );
      if (response.statusCode == 200) {
        dynamic datos = json.decode(response.body);
        dynamic usdValue = datos["hive"]["usd"];
        dynamic newValue = double.parse(value);

        return "${(usdValue * newValue).toStringAsFixed(3)}";
      } else {
        return "0";
      }
    } else {
      final response = await http.get(
        Uri.parse(
            "https://api.coingecko.com/api/v3/simple/price?ids=hive_dollar&vs_currencies=usd&include_24hr_change=true"),
        headers: {"referrerPolicy": "no-referrer", "mode": "cors"},
      );
      if (response.statusCode == 200) {
        dynamic datos = json.decode(response.body);
        dynamic usdValue = datos["hive_dollar"]["usd"];
        dynamic newValue = double.parse(value);
        return "${(usdValue * newValue).toStringAsFixed(3)}";
      } else {
        return "0";
      }
    }
  }

  getDataValue(String username, String coin) async {
    if (coin == "HIVE" || coin == "HBD") {
      var url = Uri.parse('https://api.hive.blog/');

      var response = await http.post(
        url,
        headers: {
          "accept": "application/json, text/plain, */*",
          "accept-language": "es-US,es-CO;q=0.9,es-419;q=0.8,es;q=0.7",
          "content-type": "application/json",
          "sec-ch-ua":
              "\"Chromium\";v=\"110\", \"Not A(Brand\";v=\"24\", \"Google Chrome\";v=\"110\"",
          "sec-ch-ua-mobile": "?1",
          "sec-ch-ua-platform": "\"Android\"",
          "sec-fetch-dest": "empty",
          "sec-fetch-mode": "cors",
          "sec-fetch-site": "cross-site"
        },
        body: jsonEncode({
          "id": 0,
          "jsonrpc": "2.0",
          "method": "condenser_api.get_accounts",
          "params": [
            [username]
          ]
        }),
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);

        if (coin == "HIVE") {
          var d = data["result"][0]["balance"];

          d = double.parse(d.trim().replaceAll("HIVE", ""));
          var usdValue = await getUsdValue("HIVE", "$d");
          return ListhiveItemModel(coin, "$d", "$usdValue");
        } else {
          var d = data["result"][0]["hbd_balance"];

          d = double.parse(d.trim().replaceAll("HBD", ""));
          var usdValue = await getUsdValue("HBD", "$d");
          return ListhiveItemModel(coin, "$d", "$usdValue");
        }

        // Accede a los valores del objeto `data` decodificado
      } else {
        return ListhiveItemModel(coin, "0", "0");
      }
    } else {
      var url = Uri.parse('https://api.hive-engine.com/rpc/contracts');

      var response = await http.post(url,
          headers: {
            "accept": "application/json, text/plain, */*",
            "accept-language": "es-US,es-CO;q=0.9,es-419;q=0.8,es;q=0.7",
            "access-control-allow-origin": "*",
            "content-type": "application/json",
            "sec-ch-ua":
                "\"Chromium\";v=\"110\", \"Not A(Brand\";v=\"24\", \"Google Chrome\";v=\"110\"",
            "sec-ch-ua-mobile": "?1",
            "sec-ch-ua-platform": "\"Android\"",
            "sec-fetch-dest": "empty",
            "sec-fetch-mode": "cors",
            "sec-fetch-site": "cross-site"
          },
          body: jsonEncode({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "find",
            "params": {
              "contract": "tokens",
              "table": "balances",
              "query": {"account": username},
              "limit": 1000,
              "offset": 0,
              "indexes": ""
            }
          }));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        // Accede a los valores del objeto `data` decodificado
        String swapHiveBalance = "0";
        for (var item in data['result']) {
          if (item['symbol'] == 'SWAP.HIVE') {
            swapHiveBalance = item['balance'];
            break;
          }
        }
        var usdValue = await getUsdValue("HBD", "$swapHiveBalance");
        return ListhiveItemModel("SWAP.HIVE", "$swapHiveBalance", usdValue);
      } else {
        return ListhiveItemModel("SWAP.HIVE", "0", "0");
      }
    }
  }

  Future<List<ListellipsenineItemModel>> fetchData(username, stack) async {
    final response = await http.post(
      Uri.parse('https://api.hive.blog/'),
      headers: {
        "accept": "application/json, text/plain, */*",
        "accept-language": "es-US,es-CO;q=0.9,es-419;q=0.8,es;q=0.7",
        "content-type": "application/json",
        "sec-ch-ua":
            "\"Chromium\";v=\"110\", \"Not A(Brand\";v=\"24\", \"Google Chrome\";v=\"110\"",
        "sec-ch-ua-mobile": "?1",
        "sec-ch-ua-platform": "\"Android\"",
        "sec-fetch-dest": "empty",
        "sec-fetch-mode": "cors",
        "sec-fetch-site": "cross-site"
      },
      body:
          "{\"id\":17,\"jsonrpc\":\"2.0\",\"method\":\"condenser_api.get_account_history\",\"params\":[\"$username\",$stack,1000,\"848647637693366652\",\"1713166\"]}",
    );
    try {
      final jsonResponse = json.decode(response.body);

      if (jsonResponse["error"] != null) {
        return fetchData(username,
            jsonResponse["error"]["data"]["stack"][0]["data"]["sequence"]);
      }

      List<ListellipsenineItemModel> list = [];
      for (var item in jsonResponse['result']) {
        if (item[1]["op"][0] == "transfer" &&
            item[1]["op"][1]["from"] != "honey-swap") {
          String dateTimeString = item[1]["timestamp"];
          DateTime dateTime = DateTime.parse(dateTimeString);
          String formattedDate = DateFormat.yMMMMd().add_jms().format(dateTime);

          var temp = new ListellipsenineItemModel(
            item[0],
            item[1]["op"][0],
            item[1]["op"][1]["amount"],
            item[1]["op"][1]["memo"],
            item[1]["op"][1]["from"],
            item[1]["op"][1]["to"],
            formattedDate,
            item[1]["trx_id"],
          );

          list.add(temp);
        }
      }

      if (stack == -1) {
        stack = jsonResponse['result'][0][0];
      }
      homeModelObj.value.lastStack = stack;
      homeModelObj.refresh();

      return list;
      // Use the jsonResponse map as needed
    } catch (e) {
      return [];
      // Handle the exception
    }
  }
}
