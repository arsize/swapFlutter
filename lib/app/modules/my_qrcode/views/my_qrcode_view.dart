import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/my_qrcode_controller.dart';

class MyQrcodeView extends GetView<MyQrcodeController> {
  @override
  Widget build(BuildContext context) {
    final StoreController store = Get.find();
    return Scaffold(
      appBar: defaultAppBar(title: "我的二维码", elevation: 0),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colours.app_main,
            ),
          ),
          Positioned(
            top: 20.h,
            left: 32.w,
            right: 32.w,
            child: Container(
              height: 800.w,
              padding: EdgeInsets.only(top: 100.h, left: 32.w, right: 32.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: ArUtil.border(24),
              ),
              child: Column(
                children: [
                  GetBuilder<StoreController>(builder: (_) {
                    if (_.loginData.userPhoto != null) {
                      return QrImage(
                        data: _.loginData.account ?? '',
                        version: QrVersions.auto,
                        size: 390.w,
                        embeddedImage: NetworkImage(_.loginData.userPhoto!),
                        embeddedImageStyle: QrEmbeddedImageStyle(
                          size: Size(50, 50),
                        ),
                      );
                    } else {
                      return QrImage(
                        data: _.loginData.account ?? '',
                        version: QrVersions.auto,
                        size: 390.w,
                        embeddedImage:
                            AssetImage("images/my_avatar_default.png"),
                        embeddedImageStyle: QrEmbeddedImageStyle(
                          size: Size(50, 50),
                        ),
                      );
                    }
                  }),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "请向线下服务人员出示个人二维码，以便店员扫码为你解绑电池",
                    style: TextStyle(
                      fontSize: 32.f,
                      color: Colours.app_font_grey6,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
