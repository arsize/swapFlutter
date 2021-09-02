/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:24:05 
 * @Describe: 触摸滑动卡片
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';
import 'package:swapapp/app/utils/utils.dart';

import 'panel_topbar.dart';

class Panel extends StatefulWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  _PanelState createState() => _PanelState();
}

class _PanelState extends State<Panel> with RouteAware {
  final LayerLink layerLink = LayerLink();
  late OverlayEntry _overlayInfoBar;
  bool _isVisible = true;
  String _selectMenu = "换电";

  void showIndicator() {
    _overlayInfoBar = OverlayEntry(
      builder: (BuildContext context) {
        return Positioned(
          top: 0.0,
          left: 0.0,
          child: SizedBox(
            height: 80.h,
            child: PlanelTopBar(
              offset: Offset(0, -100.h),
              link: layerLink,
            ),
          ),
        );
      },
    );
    Overlay.of(context)!.insert(_overlayInfoBar);
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: Container(
        child: Column(
          children: [
            _planHead(),
            _planBodyBtnList(),
            _sizedBoxLine(32.h),
            _planBottomBanner(),
          ],
        ),
      ),
    );
  }

  Widget _planHead() {
    return Column(
      children: [
        _planHeadRow(),
        _sizedBoxLine(20.h),
        _planHeadBtn(),
        _sizedBoxLine(32.h),
      ],
    );
  }

  Widget _planHeadRow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                child: Container(
                  width: 170.w,
                  child: _planHeadText("换电"),
                  margin: EdgeInsets.only(
                    left: 14,
                  ),
                ),
                onTap: () => {
                  setState(() {
                    print("到了这里");
                    _selectMenu = "换电";
                  })
                },
              ),
              InkWell(
                child: Container(
                  width: 90.w,
                  child: _planHeadText("商城"),
                ),
                onTap: () => {
                  setState(() {
                    _selectMenu = "商城";
                  })
                },
              ),
            ],
          ),
          Image(
            image: AssetImage("images/home_panel_right.png"),
            width: 284.w,
          )
        ],
      ),
    );
  }

  Widget _planHeadText(str) {
    return Container(
      height: 85.w,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 20.w,
            child: Opacity(
              opacity: _selectMenu == str ? 0.8 : 0.0,
              child: Container(
                width: _selectMenu == '换电' ? 68.w : 68.w,
                height: 15.w,
                color: Colours.app_yellow,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 50.w,
            child: Opacity(
              opacity: str == '换电' ? 1 : 0,
              child: Container(
                width: 115.w,
                height: 42.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.zero,
                  ),
                  color: Colours.app_yellow,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 3,
                    bottom: 3,
                    left: 6,
                    right: 6,
                  ),
                  child: Text(
                    "十秒换电",
                    style: TextStyle(
                      fontSize: 21.f,
                      fontWeight: FontWeight.w600,
                      color: Colours.app_main,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              str,
              style: TextStyle(
                fontSize: 32.f,
                color: Colours.app_main,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _planHeadBtn() {
    var text = "登录";
    return arBtn(
      fn: () {
        Get.toNamed("/login");
      },
      text: text,
      width: 630,
      height: 100,
      fontSize: 36,
    );
  }

  Widget _planBodyBtnList() {
    return Container(
      padding: EdgeInsets.only(
        left: 32.w,
        right: 32.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colours.app_normal_grey.withOpacity(0.1),
              ),
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 38.w,
                    height: 38.w,
                    image: AssetImage("images/home_shop.png"),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "购买代步",
                    style: TextStyle(fontSize: 28.f),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colours.app_normal_grey.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 38.w,
                    height: 38.h,
                    image: AssetImage("images/home_wallet.png"),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "钱包余额",
                    style: TextStyle(fontSize: 28.f),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _planBottomBanner() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
      ),
      child: Image(
        width: 686.w,
        image: AssetImage("images/home_panel_banner.png"),
      ),
    );
  }

  Widget _sizedBoxLine(double num) {
    return SizedBox(
      height: num,
    );
  }
}
