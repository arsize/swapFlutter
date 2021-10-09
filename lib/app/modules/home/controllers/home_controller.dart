import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/modules/home/apis/round_list.dart';
import 'package:raintree/app/store/store.dart';

import 'custom_map.dart';

class HomeController extends GetxController {
  final store = Get.find<StoreController>();
  final map = Get.find<CustomMap>();
  // 响应式
  final cabinetResult = CabinetListModel().obs; //机柜列表

  // 普通变量
  String selectMenu = "换电";
  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    super.onInit();
    getCabinets();
  }

//---------------------------------------------------------------
  changeMenu(str) {
    selectMenu = str;
    update();
  }

// --------------------------机柜相关------------------------------------
  void getCabinets() async {
    var _value = await roundList();
    if (_value != null) {
      cabinetResult(CabinetListModel.fromJson(_value));
    }

    print("拿到了数据");
    print(cabinetResult.value.code);
  }
}
