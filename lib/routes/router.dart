import 'package:flutter/material.dart';
import 'package:swapapp/views/about_us.dart';
import 'package:swapapp/views/add_my_address.dart';
import 'package:swapapp/views/change_mobile.dart';
import 'package:swapapp/views/edit_my_address.dart';
import 'package:swapapp/views/change_nickname.dart';
import 'package:swapapp/views/deposit_agreement.dart';
import 'package:swapapp/views/exchange_info.dart';
import 'package:swapapp/views/home.dart';
import 'package:swapapp/views/language.dart';
import 'package:swapapp/views/login.dart';
import 'package:swapapp/views/more.dart';
import 'package:swapapp/views/my.dart';
import 'package:swapapp/views/my_address.dart';
import 'package:swapapp/views/my_qrcode.dart';
import 'package:swapapp/views/my_vehicle.dart';
import 'package:swapapp/views/notice_detail.dart';
import 'package:swapapp/views/notice_list.dart';
import 'package:swapapp/views/put_money.dart';
import 'package:swapapp/views/records.dart';
import 'package:swapapp/views/registry.dart';
import 'package:swapapp/views/scan_qr.dart';
import 'package:swapapp/views/setting.dart';
import 'package:swapapp/views/transitInput.dart';
import 'package:swapapp/views/user_agreement.dart';
import 'package:swapapp/views/wallet.dart';

class Routes {
  static Map<String, WidgetBuilder> collection() {
    return {
      "setting": (context) => MySetting(), //个人中心设置
      "/": (context) => Home(), //首页
      "exchange_info": (context) => ExchangeInfo(), //换电
      "transitInput": (context) => TransitInput(), //输入电柜ID

      "my_address": (context) => MyAddress(), //收货地址
      "edit_my_address": (context) => EditMyAddress(), //修改收货地址
      "add_my_address": (context) => AddMyAddress(), //新增收货地址
      "my": (context) => MyCenter(), //个人中心
      "notice_list": (context) => NoticeList(), //公告列表

      "notice_detail": (context) => Notice(), //公告详情

      "my_vehicle": (context) => MyVehicle(), //我的车辆

      "language": (context) => Language(), //多语言

      "change_nickname": (context) => ChangeNickName(), //修改昵称

      "change_mobile": (context) => ChangeMobilePhone(), //修改手机号
      "deposit_agreement": (context) => DepositAgreement(), //充值协议
      "user_agreement": (context) => UserAgreement(), //用户协议
      "aboutus": (context) => AboutUs(), //关于我们
      "more": (context) => More(), //更多
      "login": (context) => Login(), //登录页
      "registry": (context) => Registry(),

      "records": (context) => Records(), //消费明细
      "putMoney": (context) => PutMoney(), //余额充值
      "wallet": (context) => MyWallet(), //钱包
      "myQrcode": (context) => MyQrCode(), //我的二维码

      "scanqr": (context) => ScanQr(), //扫码页
    };
  }
}
