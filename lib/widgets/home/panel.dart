/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:24:05 
 * @Describe: 触摸滑动卡片
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/common/global.dart';
import 'package:swapapp/widgets/common/common_wigets.dart';
import 'package:swapapp/widgets/home/panel_topbar.dart';

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

  @override
  void initState() {
    super.initState();
    print("init");
  }

  @override
  void dispose() {
    super.dispose();
    // _overlayInfoBar.remove();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Global.routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  // onHide
  void onHide() {
    print("onhide");
    // _isVisible = false;
    // _overlayInfoBar.remove();
  }

  // onShow

  void onShow() {
    print("onshow");
    if (!_isVisible) {
      // showIndicator();
      // _isVisible = true;
    }
  }

  @override
  void didPushNext() {
    super.didPushNext();
    if (widget.runtimeType == Panel) {
      onHide();
    }
  }

  @override
  void didPopNext() {
    super.didPopNext();
    if (widget.runtimeType == Panel) {
      onShow();
    }
  }

  void showIndicator() {
    _overlayInfoBar = OverlayEntry(
      builder: (BuildContext context) {
        return Positioned(
          top: 0.0,
          left: 0.0,
          child: SizedBox(
            height: Adapt.height(80),
            child: PlanelTopBar(
              offset: Offset(0, -Adapt.height(100)),
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
            _sizedBoxLine(Adapt.height(32)),
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
        _sizedBoxLine(Adapt.height(20)),
        _planHeadBtn(),
        _sizedBoxLine(Adapt.height(32)),
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
                  width: Adapt.width(170),
                  child: _planHeadText("换电"),
                  margin: EdgeInsets.only(
                    left: 14,
                  ),
                ),
                onTap: () => {
                  setState(() {
                    _selectMenu = "换电";
                  })
                },
              ),
              InkWell(
                child: Container(
                  width: Adapt.width(90),
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
            width: Adapt.width(284),
          )
        ],
      ),
    );
  }

  Widget _planHeadText(str) {
    return Container(
      height: Adapt.width(85),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: Adapt.width(20),
            child: Opacity(
              opacity: _selectMenu == str ? 0.8 : 0.0,
              child: Container(
                width: _selectMenu == '换电' ? Adapt.width(68) : Adapt.width(68),
                height: Adapt.width(15),
                color: Colours.app_yellow,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: Adapt.width(50),
            child: Opacity(
              opacity: str == '换电' ? 1 : 0,
              child: Container(
                width: Adapt.width(115),
                height: Adapt.width(42),
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
                      fontSize: Adapt.font(21),
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
                fontSize: Adapt.font(32),
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
    return arBtn(
      fn: () {
        Navigator.of(context).pushNamed("scanqr");
      },
      width: 630,
      height: 100,
      text: "登录/注册",
      fontSize: 36,
    );
  }

  Widget _planBodyBtnList() {
    return Container(
      padding: EdgeInsets.only(
        left: Adapt.width(32),
        right: Adapt.width(32),
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
              height: Adapt.height(100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: Adapt.width(38),
                    height: Adapt.height(38),
                    image: AssetImage("images/home_shop.png"),
                  ),
                  SizedBox(
                    width: Adapt.width(14),
                  ),
                  Text(
                    "购买代步",
                    style: TextStyle(fontSize: Adapt.font(28)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: Adapt.width(20),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: Adapt.height(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colours.app_normal_grey.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: Adapt.width(38),
                    height: Adapt.height(38),
                    image: AssetImage("images/home_wallet.png"),
                  ),
                  SizedBox(
                    width: Adapt.width(14),
                  ),
                  Text(
                    "钱包余额",
                    style: TextStyle(fontSize: Adapt.font(28)),
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
        left: Adapt.width(16),
        right: Adapt.width(16),
      ),
      child: Image(
        width: Adapt.width(686),
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
