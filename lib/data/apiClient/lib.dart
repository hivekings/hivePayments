// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'dart:convert';
import 'dart:typed_data';

import 'package:hive_payments/core/app_export.dart';
import 'package:pointycastle/block/aes.dart';
import 'package:pointycastle/block/aes_fast.dart';
import 'package:pointycastle/pointycastle.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'api_client.dart';

const HAS_SERVER = "wss://hive-auth.arcange.eu";
const HAS_APP_DATA = {
  'name': 'HivePayments',
  'description': 'wallet app for hive business',
};
final storage = new FlutterSecureStorage();

class HasClient {
  String appKey = Uuid().v4();
  String username = '';
  String token = '';
  String expire = '';
  String authKey = '';
  String authUuid = '';
  IOWebSocketChannel? ws;
  Function callback;
  BuildContext? context;

  bool reconnect = false;

  bool isConnected = false;

  BuildContext? get getContext => this.context;

  set setContext(BuildContext? context) => this.context = context;
  set setReconnect(bool reconnect) => this.reconnect = reconnect;

  HasClient(this.callback);

  void connect() {
    if (!isConnected) {
      ws = IOWebSocketChannel.connect(HAS_SERVER);

      ws?.stream.listen(onMessage, onDone: () {
        debugPrint('WebSocket closed. Please reload the page...');
        isConnected = false;
        if (reconnect) {
          callback("reconnect");
        }
      }, onError: (error) {
        debugPrint('Error: $error');
      }, cancelOnError: true);
    }
  }

  void disconnect() {
    ws = null;
  }

  void onMessage(message) {
    isConnected = true;
    debugPrint('message: $message');
    final msg = json.decode(message);
    if (msg['cmd'] != null) {
      switch (msg['cmd']) {
        case 'auth_wait':
          processAuthWait(msg);
          break;
        case 'auth_ack':
          debugPrint("auth_ack $msg");
          processAuthAck(msg['data']);
          break;
        case 'auth_nack':
          debugPrint("auth_nack $msg");
          // processAuthNack();
          break;
        case 'sign_wait':
          debugPrint("sign_wait $msg");
          processSignWait(msg['uuid']);
          break;
        case 'sign_ack':
          debugPrint("sign_ack $msg");
          processSignAck(msg);
          break;
        case 'sign_nack':
          debugPrint("sign_nack $msg");
          processSignNack(msg);
          break;
        case 'sign_err':
          debugPrint("sign_err $msg");
          //processSignErr(msg['uuid'], msg['error']);
          break;
      }
    }
  }

  void processAuthWait(msg) {
    authUuid = msg['uuid'];
    String jsonx = json.encode({
      "account": msg['account'],
      "uuid": msg['uuid'],
      "key": authKey,
      "host": HAS_SERVER
    });

    String URI = "has://auth_req/${base64.encode(utf8.encode(jsonx))}";

    callback(URI);
  }

  Future<void> processAuthAck(String data) async {
    debugPrint("processAuthAck $data");
    dynamic datax = json.decode(await decrypt(data));
    token = datax["token"];
    expire = "${datax["expire"]}";

    await storage.write(key: "username", value: username);
    await storage.write(key: "token", value: token);
    await storage.write(key: "expire", value: expire);
    await storage.write(key: "authKey", value: authKey);
    callback("logged in");
  }

  // Función para generar una clave AES de 128 bits a partir de un UUID
  Uint8List generateAESKeyFromUUID(String uuidString) {
    final uuidBytes = Uint8List.fromList(uuidString.codeUnits);
    return Uint8List.fromList(uuidBytes.sublist(0, 16));
  }

  Future<String> encriptar(data, key) async {
    ApiClient c = ApiClient();
    Response r = await c.post("https://hivepaymentsweb.herokuapp.com/encriptar",
        {"data": data, "key": key},
        contentType: "application/json");

    return r.body["ecp"];
  }

  Future<String> decrypt(data) async {
    ApiClient c = ApiClient();
    Response r = await c.post(
        "https://hivepaymentsweb.herokuapp.com/desencriptar",
        {"encrypted": data, "key": authKey},
        contentType: "application/json");

    return r.body["dcrp"];
  }

  Future<void> click_login(String u) async {
    username = u;
    String authData = json.encode({"app": HAS_APP_DATA});

    authKey = Uuid().v4();

    String encryptedMessage = await encriptar(authData, authKey);

    dynamic payload = {
      "cmd": "auth_req",
      "account": username,
      "data": encryptedMessage
    };
    ws?.sink.add(json.encode(payload));
  }

  Future<void> makeTransfer(to, quantity, tokenSend, memo) async {
    String? username = await storage.read(key: "username");
    String? token = await storage.read(key: "token");
    String? authKey = await storage.read(key: "authKey");

    dynamic op = [
      "transfer",
      {
        "from": username,
        "to": to,
        "amount": '$quantity $tokenSend',
        "memo": memo,
      }
    ];
    dynamic sign_data = json.encode({
      "key_type": "active",
      "ops": [op],
      "broadcast": true
    });
    String data = await encriptar(sign_data, authKey);
    dynamic payload = {
      "cmd": "sign_req",
      "account": username,
      "token": token,
      "data": data
    };
    ws?.sink.add(json.encode(payload));
  }

  Future<void> _dialogBuilder(String message, String title, action) {
    return showDialog<void>(
      context: context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Acept'),
              onPressed: () => {action(context)},
            ),
          ],
        );
      },
    );
  }

  Future<void> processSignWait(msg) async {
    await LaunchApp.openApp(
        androidPackageName: 'com.mobilekeychain',
        iosUrlScheme: 'pulsesecure://',
        appStoreLink:
            'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
        openStore: true);
  }

  Future<void> processSignNack(msg) async {
    await _dialogBuilder(msg["error"], "Error on transfer request", (context) {
      Navigator.of(context).pop();
    });
  }

  Future<void> processSignAck(msg) async {
    await _dialogBuilder(msg["result"], "Transfer request sucess", (context) {
      Get.toNamed(AppRoutes.homeScreen);
    });
  }
}
