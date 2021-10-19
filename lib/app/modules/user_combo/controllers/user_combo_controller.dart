import 'package:get/get.dart';

class TextB {
  TextB({
    this.text,
    this.age,
  });

  String? text;
  int? age;
}

class UserComboController extends GetxController {
  var text = TextB(age: 0);

  @override
  void onInit() {
    super.onInit();
  }

  changeTo() {
    text.age = text.age! + 1;
    update();
    print("h");
  }

  @override
  void onClose() {}
}
