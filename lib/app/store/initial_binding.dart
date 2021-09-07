import 'package:get/get.dart';

import 'auth_store.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthStore>(AuthStore(), permanent: true);
  }
}
