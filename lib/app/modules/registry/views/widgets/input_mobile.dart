/*
 * @Author: Arsize 
 * @Date: 2021-09-03 10:40:24 
 * @Describe: 输入手机号
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/modules/registry/controllers/registry_controller.dart';
import 'package:raintree/app/utils/utils.dart';

class InputMobile extends StatelessWidget {
  const InputMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegistryController ctrl = Get.find();
    return Container(
      width: 690.w,
      height: 96.w,
      decoration: BoxDecoration(
        borderRadius: ArUtil.border(12),
        color: Colours.app_FA_grey,
      ),
      child: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: Row(
          children: [
            InkWell(
              child: Row(
                children: [
                  Obx(() =>
                      Text("+${ctrl.prefixList[ctrl.prefix.value]['prefix']}")),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () => {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      height: 500.h,
                      padding: EdgeInsets.only(left: 40.w, right: 40.w),
                      child: ListView.builder(
                        itemCount: ctrl.prefixList.length,
                        controller: ctrl.scrollController,
                        itemBuilder: (ctx, index) => InkWell(
                          onTap: () {
                            ctrl.changePrefix(index);
                            Get.back();
                          },
                          child: ListTile(
                            title: Text(
                              "${ctrl.prefixList[index]['cn']}(+${ctrl.prefixList[index]['prefix']})",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              },
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: TextField(
                controller: ctrl.mobileInputController,
                decoration: InputDecoration(
                  hintText: "请输入手机号",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 30.f,
                    color: Colours.app_normal_grey,
                  ),
                ),
                onChanged: (String text) {
                  ctrl.step1Onchange(text, 'mobile');
                },
              ),
            ),
            GetBuilder<RegistryController>(
              builder: (_) {
                return _.mobile.length > 1
                    ? Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            ctrl.clearInput(type: "mobile");
                          },
                          child: Image(
                            width: 32.w,
                            height: 32.w,
                            image: AssetImage("images/input_icon_close.png"),
                          ),
                        ),
                      )
                    : Container();
              },
            ),
            SizedBox(
              width: 40.w,
            ),
          ],
        ),
      ),
    );
  }
}
