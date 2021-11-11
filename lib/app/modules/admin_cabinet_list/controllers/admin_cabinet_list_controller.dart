import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gzx_dropdown_menu/gzx_dropdown_menu.dart';
import 'package:raintree/app/entities/query_cabinet_list_model/query_cabinet_list_model.dart';
import 'package:raintree/app/modules/admin_cabinet_list/apis/query_cabinet_list.dart';

class SortCondition {
  String name;
  bool isSelected;

  SortCondition({
    required this.name,
    required this.isSelected,
  });
}

class AdminCabinetListController extends GetxController {
  late TextEditingController searchController;
  late GZXDropdownMenuController dropdownMenuController;
  late List<SortCondition> distanceSortConditions = [];
  late SortCondition selectDistanceSortCondition;
  late ScrollController scrollController;
  QueryCabinetListModel cabinetList = QueryCabinetListModel();

  late List records = [];

  @override
  void onInit() {
    searchController = TextEditingController();
    dropdownMenuController = GZXDropdownMenuController();
    scrollController = ScrollController();
    distanceSortConditions.add(SortCondition(name: '全部', isSelected: true));
    distanceSortConditions.add(SortCondition(name: '在线', isSelected: false));
    distanceSortConditions.add(SortCondition(name: '离线', isSelected: false));
    selectDistanceSortCondition = distanceSortConditions[0];
    getCabinetList();
    super.onInit();
  }

  @override
  void dispose() {
    searchController.dispose();
    dropdownMenuController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void getCabinetList() async {
    var _result = await queryCabinetList();
    cabinetList = QueryCabinetListModel.fromJson(_result);
    update();
  }

  void selectDropItem(index) {
    for (var value in distanceSortConditions) {
      value.isSelected = false;
    }
    selectDistanceSortCondition = distanceSortConditions[index];
    selectDistanceSortCondition.isSelected = true;

    dropdownMenuController.hide();
    update();
  }

  @override
  void onClose() {}
}
