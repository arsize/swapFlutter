import 'package:get/get.dart';
import 'package:raintree/app/entities/combo_model/combo_model.dart';
import 'package:raintree/app/modules/user_combo/apis/get_user_frequency_list.dart';

class UserComboController extends GetxController {
  ComboModel combo = ComboModel();
  @override
  void onInit() {
    getComboList();
    super.onInit();
  }

  /// 获取套餐列表
  void getComboList() async {
    var _result = await getUserFrequencyCardList();
    combo = ComboModel.fromJson(_result);
    update();
  }

  @override
  void onClose() {}
}
