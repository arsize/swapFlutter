library agreement_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/agreement_controller.dart';

part './widgets/user_agreement.dart';
part './widgets/charge_agreement.dart';

class AgreementView extends GetView<AgreementController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        title: controller.type == 'user'
            ? '用户协议'
            : controller.type == 'charge'
                ? '充值协议'
                : controller.type == 'product'
                    ? '交货政策'
                    : controller.type == 'secret'
                        ? '隐私政策'
                        : '',
      ),
      body: Container(
        padding: EdgeInsets.all(32.w),
        child: UserAgreeMent(),
      ),
    );
  }
}
