import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gzx_dropdown_menu/gzx_dropdown_menu.dart';

class AdminCabinetListController extends GetxController {
  late TextEditingController searchController;
  late GZXDropdownMenuController dropdownMenuController;
  @override
  void onInit() {
    print("进来了");
    searchController = TextEditingController();
    dropdownMenuController = GZXDropdownMenuController();
    super.onInit();
  }

  @override
  void dispose() {
    searchController.dispose();
    dropdownMenuController.dispose();
    super.dispose();
  }

  @override
  void onClose() {}
}
