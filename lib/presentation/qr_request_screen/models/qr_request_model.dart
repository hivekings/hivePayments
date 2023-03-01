import 'qr_request_item_model.dart';

class QrRequestModel {
  List<QrRequestItemModel> qrRequestItemList = [
    QrRequestItemModel("1", "2", "3", "4"),
    QrRequestItemModel("5", "6", "7", "8"),
    QrRequestItemModel("9", "0", ".", "-"),
  ];

  String? currency = "HIVE";
}
