import 'package:get/get.dart';

import 'package:swapapp/app/modules/about_us/bindings/about_us_binding.dart';
import 'package:swapapp/app/modules/about_us/views/about_us_view.dart';
import 'package:swapapp/app/modules/camera_scan/bindings/camera_scan_binding.dart';
import 'package:swapapp/app/modules/camera_scan/views/camera_scan_view.dart';
import 'package:swapapp/app/modules/exchange_info/bindings/exchange_info_binding.dart';
import 'package:swapapp/app/modules/exchange_info/views/exchange_info_view.dart';
import 'package:swapapp/app/modules/home/bindings/home_binding.dart';
import 'package:swapapp/app/modules/home/views/home_view.dart';
import 'package:swapapp/app/modules/login/bindings/login_binding.dart';
import 'package:swapapp/app/modules/login/views/login_view.dart';
import 'package:swapapp/app/modules/more/bindings/more_binding.dart';
import 'package:swapapp/app/modules/more/views/more_view.dart';
import 'package:swapapp/app/modules/my/bindings/my_binding.dart';
import 'package:swapapp/app/modules/my/views/my_view.dart';
import 'package:swapapp/app/modules/my_package/bindings/my_package_binding.dart';
import 'package:swapapp/app/modules/my_package/views/my_package_view.dart';
import 'package:swapapp/app/modules/my_qrcode/bindings/my_qrcode_binding.dart';
import 'package:swapapp/app/modules/my_qrcode/views/my_qrcode_view.dart';
import 'package:swapapp/app/modules/put_money/bindings/put_money_binding.dart';
import 'package:swapapp/app/modules/put_money/views/put_money_view.dart';
import 'package:swapapp/app/modules/records/bindings/records_binding.dart';
import 'package:swapapp/app/modules/records/views/records_view.dart';
import 'package:swapapp/app/modules/registry/bindings/registry_binding.dart';
import 'package:swapapp/app/modules/registry/views/registry_view.dart';
import 'package:swapapp/app/modules/serving/bindings/serving_binding.dart';
import 'package:swapapp/app/modules/serving/views/serving_view.dart';
import 'package:swapapp/app/modules/setting/bindings/setting_binding.dart';
import 'package:swapapp/app/modules/setting/views/setting_view.dart';
import 'package:swapapp/app/modules/shop/bindings/shop_binding.dart';
import 'package:swapapp/app/modules/shop/views/shop_view.dart';
import 'package:swapapp/app/modules/transit_input/bindings/transit_input_binding.dart';
import 'package:swapapp/app/modules/transit_input/views/transit_input_view.dart';
import 'package:swapapp/app/modules/vehicle/bindings/vehicle_binding.dart';
import 'package:swapapp/app/modules/vehicle/views/vehicle_view.dart';
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
    GetPage(
      name: _Paths.MY_PACKAGE,
      page: () => MyPackageView(),
      binding: MyPackageBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_SCAN,
      page: () => CameraScanView(),
      binding: CameraScanBinding(),
    ),
    GetPage(
      name: _Paths.TRANSIT_INPUT,
      page: () => TransitInputView(),
      binding: TransitInputBinding(),
    ),
    GetPage(
      name: _Paths.EXCHANGE_INFO,
      page: () => ExchangeInfoView(),
      binding: ExchangeInfoBinding(),
    ),
    GetPage(
      name: _Paths.SERVING,
      page: () => ServingView(),
      binding: ServingBinding(),
    ),
    GetPage(
      name: _Paths.PUT_MONEY,
      page: () => PutMoneyView(),
      binding: PutMoneyBinding(),
    ),
    GetPage(
      name: _Paths.RECORDS,
      page: () => RecordsView(),
      binding: RecordsBinding(),
    ),
    GetPage(
      name: _Paths.VEHICLE,
      page: () => VehicleView(),
      binding: VehicleBinding(),
    ),
  ];
}
