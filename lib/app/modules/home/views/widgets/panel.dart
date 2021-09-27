import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';
import 'package:swapapp/app/modules/home/controllers/home_controller.dart';
import 'package:swapapp/app/modules/home/views/widgets/panel_btn_list.dart';
import 'package:swapapp/app/modules/home/views/widgets/panel_head_row.dart';
import 'package:swapapp/app/store/store.dart';
import 'package:swapapp/app/utils/utils.dart';

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController home = Get.find();
    final StoreController store = Get.find();
    return CompositedTransformTarget(
      link: home.layerLink,
      child: Container(
        child: Column(
          children: [
            Column(
              children: [
                PanelHeadRow(),
                SizedBox(
                  height: 20.h,
                ),
                Obx(
                  () => arBtn(
                    fn: () {
                      store.isLogin.value
                          ? Get.toNamed(
                              "/login",
                            )
                          : Get.toNamed(
                              "/login",
                            );
                    },
                    leftIcon:
                        store.isLogin.value ? "images/home_scan_icon.png" : "",
                    text: store.isLogin.value ? "扫码换电" : "登录/注册",
                    width: 630,
                    height: 100,
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
            PanelBtnList(),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
              ),
              child: Image(
                width: 686.w,
                image: AssetImage("images/home_panel_banner.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
