import 'package:get/get.dart';
import 'package:swapapp/app/utils/utils.dart';

class AuthStore extends GetxController {
  static AuthStore get to => Get.find();

  static const TOKEN = 'TOKEN';
  static const USER = 'USER';

  late var token;
  final isLogged = true.obs;

  @override
  void onInit() {
    super.onInit();
    print("oninit auth store");
    token = LoacalStorage().getJSON(TOKEN);
    if (token == null) {
      isLogged.value = false;
    }
  }

  changeisLogged() {
    print("点击了");
    isLogged.value = false;
  }

  void saveToken(String token) async {
    await LoacalStorage().setJSON(TOKEN, token);
    this.token = token;
    update();
  }

  Future<void> logout() async {
    await LoacalStorage().remove(TOKEN);
    token = null;
    isLogged.value = false;
    update();
  }
}
