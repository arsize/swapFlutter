import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';
import 'package:swapapp/app/modules/home/controllers/home_controller.dart';
import 'package:swapapp/app/modules/home/views/widgets/panel_btn_list.dart';
import 'package:swapapp/app/modules/home/views/widgets/panel_head_row.dart';
import 'package:swapapp/app/utils/utils.dart';

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController ctrl = Get.find();
    return CompositedTransformTarget(
      link: ctrl.layerLink,
      child: Container(
        child: Column(
          children: [
            Column(
              children: [
                PanelHeadRow(),
                SizedBox(
                  height: 20.h,
                ),
                arBtn(
                  fn: () {
                    Get.toNamed(
                      "/login",
                    );
                  },
                  text: "登录/注册",
                  width: 630,
                  height: 100,
                  fontSize: 36,
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
