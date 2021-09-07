import 'package:get/get.dart';

import 'package:swapapp/app/modules/about_us/bindings/about_us_binding.dart';
import 'package:swapapp/app/modules/about_us/views/about_us_view.dart';
import 'package:swapapp/app/modules/home/bindings/home_binding.dart';
import 'package:swapapp/app/modules/home/views/home_view.dart';
import 'package:swapapp/app/modules/login/bindings/login_binding.dart';
import 'package:swapapp/app/modules/login/views/login_view.dart';
import 'package:swapapp/app/modules/more/bindings/more_binding.dart';
import 'package:swapapp/app/modules/more/views/more_view.dart';
import 'package:swapapp/app/modules/my/bindings/my_binding.dart';
import 'package:swapapp/app/modules/my/views/my_view.dart';
import 'package:swapapp/app/modules/my_qrcode/bindings/my_qrcode_binding.dart';
import 'package:swapapp/app/modules/my_qrcode/views/my_qrcode_view.dart';
import 'package:swapapp/app/modules/registry/bindings/registry_binding.dart';
import 'package:swapapp/app/modules/registry/views/registry_view.dart';
import 'package:swapapp/app/modules/setting/bindings/setting_binding.dart';
import 'package:swapapp/app/modules/setting/views/setting_view.dart';
import 'package:swapapp/app/modules/shop/bindings/shop_binding.dart';
import 'package:swapapp/app/modules/shop/views/shop_view.dart';
import 'package:swapapp/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:swapapp/app/modules/wallet/views/wallet_view.dart';

import '../middlewares/router_auth.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: _Paths.REGISTRY,
      page: () => RegistryView(),
      binding: RegistryBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: _Paths.MY,
      page: () => MyView(),
      binding: MyBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
      middlewares: [RouteAuthMiddleware()],
    ),
    GetPage(
      name: _Paths.MY_QRCODE,
      page: () => MyQrcodeView(),
      binding: MyQrcodeBinding(),
      middlewares: [RouteAuthMiddleware()],
    ),
    GetPage(
      name: _Paths.MORE,
      page: () => MoreView(),
      binding: MoreBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => AboutUsView(),
      binding: AboutUsBinding(),
    ),
  ];
}
