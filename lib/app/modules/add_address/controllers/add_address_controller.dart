import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:raintree/app/common/langs/langs.dart';
import 'package:raintree/app/modules/add_address/apis/add_address.dart';

class AddAddressController extends GetxController {
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
    print(text);
    print(type);
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
    print("到了这里");
    if (name != '' && mobile != '' && address != '' && detail != '') {
      finish.value = true;
    } else {
      finish.value = false;
    }
  }

  void submitTo() async {
    var _result = await addDeliveryAddress();
    if (_result["code"] == 200) {
      EasyLoading.showSuccess("新增成功");
    } else {
      EasyLoading.showError("新增失败，请重新填写");
    }
    await Future.delayed(Duration(seconds: 2));
    Get.back();
  }

  @override
  void onClose() {}
}
