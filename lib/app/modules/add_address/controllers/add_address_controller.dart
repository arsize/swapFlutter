import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:raintree/app/modules/add_address/apis/add_address.dart';
import 'package:raintree/app/modules/product_address/controllers/product_address_controller.dart';

class AddAddressController extends GetxController {
  final productController = Get.find<ProductAddressController>();
  // 控制器
  late TextEditingController nameInputController;
  late TextEditingController mobileInputController;
  late TextEditingController addressInputController;
  late TextEditingController detailInputController;

  RxBool finish = false.obs;

  String name = '';
  String mobile = '';
  String address = '';
  String detail = '';

  @override
  void onInit() {
    super.onInit();
    nameInputController = TextEditingController();
    mobileInputController = TextEditingController();
    addressInputController = TextEditingController();
    detailInputController = TextEditingController();
  }

  @override
  void dispose() {
    nameInputController.dispose();
    mobileInputController.dispose();
    addressInputController.dispose();
    detailInputController.dispose();
    super.dispose();
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
      detail = text;
    }
    if (name != '' && mobile != '' && address != '' && detail != '') {
      finish.value = true;
    } else {
      finish.value = false;
    }
  }

  void submitTo() async {
    var _result = await addDeliveryAddress(
      consignee: name,
      consigneePhone: mobile,
      detailedAddress: detail,
      takeRegion: address,
    );
    if (_result["code"] == 200) {
      EasyLoading.showSuccess("新增成功");
      await Future.delayed(Duration(seconds: 1));
      productController.getAddressList();
      Get.back();
    } else {
      EasyLoading.showError("新增失败，请重新填写");
    }
  }

  @override
  void onClose() {}
}
