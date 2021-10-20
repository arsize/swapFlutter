import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:raintree/app/modules/edit_address/apis/update_address.dart';
import 'package:raintree/app/modules/product_address/controllers/product_address_controller.dart';

class EditAddressController extends GetxController {
  final productController = Get.find<ProductAddressController>();
  RxBool finish = false.obs;
  // 控制器
  late TextEditingController nameInputController;
  late TextEditingController mobileInputController;
  late TextEditingController addressInputController;
  late TextEditingController detailInputController;

  late String name;
  late String mobile;
  late String detailedAddress;
  late String id;
  late String address;
  @override
  void onInit() {
    super.onInit();
    setTextController();
    id = Get.parameters['id']!;
    name = Get.parameters['name'] ?? '';
    nameInputController.value = TextEditingValue(text: name);
    mobile = Get.parameters['mobile'] ?? '';
    mobileInputController.value = TextEditingValue(text: mobile);
    detailedAddress = Get.parameters['detailedAddress'] ?? '';
    detailInputController.value = TextEditingValue(text: detailedAddress);
    address = Get.parameters['address'] ?? '';
    addressInputController.value = TextEditingValue(text: address);
    checkFinish();
  }

  void setTextController() {
    nameInputController = TextEditingController();
    mobileInputController = TextEditingController();
    addressInputController = TextEditingController();
    detailInputController = TextEditingController();
  }

  inputOnchange(text, type) {
    if (type == "name") {
      name = text;
    }
    if (type == 'mobile') {
      mobile = text;
    }
    if (type == 'address') {
      address = text;
    }
    if (type == 'detail_address') {
      detailedAddress = text;
    }
    checkFinish();
  }

  checkFinish() {
    if (name != '' && mobile != '' && address != '' && detailedAddress != '') {
      finish.value = true;
    } else {
      finish.value = false;
    }
  }

  void submitTo() async {
    var _result = await updateDeliveryAddress(
      id: id,
      consignee: name,
      consigneePhone: mobile,
      detailedAddress: detailedAddress,
      takeRegion: address,
    );
    if (_result["code"] == 200) {
      EasyLoading.showSuccess("修改成功");
      await Future.delayed(Duration(seconds: 1));
      productController.getAddressList();
      Get.back();
    } else {
      EasyLoading.showError("修改失败，请重新填写");
    }
  }

  @override
  void dispose() {
    nameInputController.dispose();
    mobileInputController.dispose();
    addressInputController.dispose();
    detailInputController.dispose();
    super.dispose();
  }
}
