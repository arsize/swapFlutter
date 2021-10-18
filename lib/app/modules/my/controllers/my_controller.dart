import 'package:get/get.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/modules/my/apis/get_user_center.dart';
import 'package:raintree/app/store/store.dart';

class MyController extends GetxController {
  final StoreController store = Get.find();
  Rx<UserModel> usr = UserModel().obs;

  @override
  void onInit() async {
    super.onInit();
    if (store.isLogin.value) {
      var _value = await getUserCenterData();
      usr.value = UserModel.fromJson(_value);
    }
  }

  String handleUserUid(String value) {
    return value.substring(0, 8);
  }

  @override
  void onClose() {}
}
