import 'package:get/get.dart';
import 'listhive_item_model.dart';
import 'listellipsenine_item_model.dart';

class HomeModel {
  RxList<ListhiveItemModel> listhiveItemList =
      RxList.filled(2, ListhiveItemModel());

  RxList<ListellipsenineItemModel> listellipsenineItemList =
      RxList.filled(6, ListellipsenineItemModel());
}
