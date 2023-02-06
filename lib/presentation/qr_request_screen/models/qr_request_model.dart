import 'package:get/get.dart';
import 'qr_request_item_model.dart';

class QrRequestModel {
  RxList<QrRequestItemModel> qrRequestItemList =
      RxList.filled(3, QrRequestItemModel());
}
