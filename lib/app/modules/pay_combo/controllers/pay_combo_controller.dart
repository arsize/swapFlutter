import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/modules/pay_combo/apis/pay_frequency_card.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/modules/pay_combo/apis/get_combo_list.dart';
import 'package:raintree/app/values/result_code.dart';

class PayComboController extends GetxController {
  CanUseComboModel comoModel = CanUseComboModel();
  RxBool show = false.obs;
  RxDouble money = 0.0.obs;
  int selectId = 0;
  @override
  void onInit() {
    super.onInit();
    getCanUseCombo();
  }

  void showMore() {
    show.value = !show.value;
    update();
  }

  /// 获取套餐列表
  void getCanUseCombo() async {
    var _result = await getFrequencyCardList();
    comoModel = CanUseComboModel.fromJson(_result);
    if (comoModel.data != null && comoModel.data!.isNotEmpty) {
      selectId = comoModel.data![0].id!;
      money.value = comoModel.data![0].price!;
    }
    update();
  }

  /// 点击选择套餐
  void selectComboItem(e) {
    selectId = e;
    comoModel.data!.map((e) {
      if (e.id == selectId) {
        money.value = e.price ?? 0.0;
      }
    }).toList();
    update();
  }

  /// 确认购买
  void submitTo() {
    arDialog(
      context: Get.context,
      fn1: () async {
        var _result = await payFrequencyCard(frequencyCardId: selectId);
        Get.back();
        if (_result["code"] != 200) {
          switch (_result["code"]) {
            case WALLET_BALANCE_NOT_ENOUGH:
              arDialog(
                context: Get.context,
                fn1: () {
                  Get.back();
                },
                fn1Text: "以后再说",
                fn2: () {
                  Get.back();
                  Get.toNamed("/payment");
                },
                fn2Text: "去充值",
                content: "钱包余额不足，请先充值",
              );
              break;
            default:
          }
        }
      },
      height: 450.h,
      title: "余额支付",
      fn1Text: "确认支付",
      contentWidget: Column(
        children: [
          Text(
            "购买套餐",
            style: TextStyle(
              fontSize: 28.f,
              color: Colours.app_font_grey6,
            ),
          ),
          Text(
            "￥" + money.toString(),
            style: TextStyle(
              fontSize: 44.f,
              color: Colours.app_main,
            ),
          )
        ],
      ),
    );
  }

  @override
  void onClose() {}
}
