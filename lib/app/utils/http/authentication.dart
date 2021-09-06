import 'dart:async';
import 'package:get/get.dart';
import 'package:swapapp/app/utils/global.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'package:swapapp/config.dart';

/// 检查是否有 token
bool isAuthenticated() {
  var profileJSON = LoacalStorage().getJSON(STORAGE_USER_PROFILE_KEY);
  return profileJSON != null ? true : false;
}

/// 删除缓存token
Future deleteAuthentication() async {
  await LoacalStorage().remove(STORAGE_USER_PROFILE_KEY);
  Global.profile = null;
}

/// 重新登录
void deleteTokenAndReLogin() async {
  await deleteAuthentication();
  Get.offAndToNamed('/login');
}
