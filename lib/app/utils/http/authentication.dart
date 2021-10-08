import 'dart:async';
import 'package:get/get.dart';
import 'package:raintree/app/utils/storage.dart';
import 'package:raintree/config.dart';

/// 检查是否有 token
bool isAuthenticated() {
  var profileJSON = LoacalStorage().getJSON(LOGINDATA);
  return profileJSON != null ? true : false;
}

/// 删除缓存token
Future deleteAuthentication() async {
  await LoacalStorage().remove(LOGINDATA);
}

/// 重新登录
void deleteTokenAndReLogin() async {
  await deleteAuthentication();
  Get.offAndToNamed('/login');
}
