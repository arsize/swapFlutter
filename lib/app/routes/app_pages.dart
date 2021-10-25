import 'package:get/get.dart';

import 'package:raintree/app/modules/about_us/bindings/about_us_binding.dart';
import 'package:raintree/app/modules/about_us/views/about_us_view.dart';
import 'package:raintree/app/modules/add_address/bindings/add_address_binding.dart';
import 'package:raintree/app/modules/add_address/views/add_address_view.dart';
import 'package:raintree/app/modules/admin/bindings/admin_binding.dart';
import 'package:raintree/app/modules/admin/views/admin_view.dart';
import 'package:raintree/app/modules/admin_cabinet_list/bindings/admin_cabinet_list_binding.dart';
import 'package:raintree/app/modules/admin_cabinet_list/views/admin_cabinet_list_view.dart';
import 'package:raintree/app/modules/agreement/bindings/agreement_binding.dart';
import 'package:raintree/app/modules/agreement/views/agreement_view.dart';
import 'package:raintree/app/modules/bind_car/bindings/bind_car_binding.dart';
import 'package:raintree/app/modules/bind_car/views/bind_car_view.dart';
import 'package:raintree/app/modules/bind_contact/bindings/bind_contact_binding.dart';
import 'package:raintree/app/modules/bind_contact/views/bind_contact_view.dart';
import 'package:raintree/app/modules/bind_success/bindings/bind_success_binding.dart';
import 'package:raintree/app/modules/bind_success/views/bind_success_view.dart';
import 'package:raintree/app/modules/camera_scan/bindings/camera_scan_binding.dart';
import 'package:raintree/app/modules/camera_scan/views/camera_scan_view.dart';
import 'package:raintree/app/modules/common_problem/bindings/common_problem_binding.dart';
import 'package:raintree/app/modules/common_problem/views/common_problem_view.dart';
import 'package:raintree/app/modules/customer_service/bindings/customer_service_binding.dart';
import 'package:raintree/app/modules/customer_service/views/customer_service_view.dart';
import 'package:raintree/app/modules/edit_address/bindings/edit_address_binding.dart';
import 'package:raintree/app/modules/edit_address/views/edit_address_view.dart';
import 'package:raintree/app/modules/edit_mobile/bindings/edit_mobile_binding.dart';
import 'package:raintree/app/modules/edit_mobile/views/edit_mobile_view.dart';
import 'package:raintree/app/modules/edit_nickname/bindings/edit_nickname_binding.dart';
import 'package:raintree/app/modules/edit_nickname/views/edit_nickname_view.dart';
import 'package:raintree/app/modules/exchange_finish/bindings/exchange_finish_binding.dart';
import 'package:raintree/app/modules/exchange_finish/views/exchange_finish_view.dart';
import 'package:raintree/app/modules/exchange_info/bindings/exchange_info_binding.dart';
import 'package:raintree/app/modules/exchange_info/views/exchange_info_view.dart';
import 'package:raintree/app/modules/feedback/bindings/feedback_binding.dart';
import 'package:raintree/app/modules/feedback/views/feedback_view.dart';
import 'package:raintree/app/modules/home/bindings/home_binding.dart';
import 'package:raintree/app/modules/home/views/home_view.dart';
import 'package:raintree/app/modules/login/bindings/login_binding.dart';
import 'package:raintree/app/modules/login/views/login_view.dart';
import 'package:raintree/app/modules/more/bindings/more_binding.dart';
import 'package:raintree/app/modules/more/views/more_view.dart';
import 'package:raintree/app/modules/multilingual/bindings/multilingual_binding.dart';
import 'package:raintree/app/modules/multilingual/views/multilingual_view.dart';
import 'package:raintree/app/modules/my/bindings/my_binding.dart';
import 'package:raintree/app/modules/my/views/my_view.dart';
import 'package:raintree/app/modules/my_package/bindings/my_package_binding.dart';
import 'package:raintree/app/modules/my_package/views/my_package_view.dart';
import 'package:raintree/app/modules/my_qrcode/bindings/my_qrcode_binding.dart';
import 'package:raintree/app/modules/my_qrcode/views/my_qrcode_view.dart';
import 'package:raintree/app/modules/notice_detail/bindings/notice_detail_binding.dart';
import 'package:raintree/app/modules/notice_detail/views/notice_detail_view.dart';
import 'package:raintree/app/modules/notice_list/bindings/notice_list_binding.dart';
import 'package:raintree/app/modules/notice_list/views/notice_list_view.dart';
import 'package:raintree/app/modules/order_detail/bindings/order_detail_binding.dart';
import 'package:raintree/app/modules/order_detail/views/order_detail_view.dart';
import 'package:raintree/app/modules/pay_combo/bindings/pay_combo_binding.dart';
import 'package:raintree/app/modules/pay_combo/views/pay_combo_view.dart';
import 'package:raintree/app/modules/pay_order/bindings/pay_order_binding.dart';
import 'package:raintree/app/modules/pay_order/views/pay_order_view.dart';
import 'package:raintree/app/modules/pay_order_success/bindings/pay_order_success_binding.dart';
import 'package:raintree/app/modules/pay_order_success/views/pay_order_success_view.dart';
import 'package:raintree/app/modules/pay_package_list/bindings/pay_package_list_binding.dart';
import 'package:raintree/app/modules/pay_package_list/views/pay_package_list_view.dart';
import 'package:raintree/app/modules/payment/bindings/payment_binding.dart';
import 'package:raintree/app/modules/payment/views/payment_view.dart';
import 'package:raintree/app/modules/product_address/bindings/product_address_binding.dart';
import 'package:raintree/app/modules/product_address/views/product_address_view.dart';
import 'package:raintree/app/modules/put_money/bindings/put_money_binding.dart';
import 'package:raintree/app/modules/put_money/views/put_money_view.dart';
import 'package:raintree/app/modules/records/bindings/records_binding.dart';
import 'package:raintree/app/modules/records/views/records_view.dart';
import 'package:raintree/app/modules/registry/bindings/registry_binding.dart';
import 'package:raintree/app/modules/registry/views/registry_view.dart';
import 'package:raintree/app/modules/serving/bindings/serving_binding.dart';
import 'package:raintree/app/modules/serving/views/serving_view.dart';
import 'package:raintree/app/modules/setting/bindings/setting_binding.dart';
import 'package:raintree/app/modules/setting/views/setting_view.dart';
import 'package:raintree/app/modules/shop/bindings/shop_binding.dart';
import 'package:raintree/app/modules/shop/views/shop_view.dart';
import 'package:raintree/app/modules/shop_order_list/bindings/shop_order_list_binding.dart';
import 'package:raintree/app/modules/shop_order_list/views/shop_order_list_view.dart';
import 'package:raintree/app/modules/shop_product_detail/bindings/shop_product_detail_binding.dart';
import 'package:raintree/app/modules/shop_product_detail/views/shop_product_detail_view.dart';
import 'package:raintree/app/modules/submit_order/bindings/submit_order_binding.dart';
import 'package:raintree/app/modules/submit_order/views/submit_order_view.dart';
import 'package:raintree/app/modules/transit_input/bindings/transit_input_binding.dart';
import 'package:raintree/app/modules/transit_input/views/transit_input_view.dart';
import 'package:raintree/app/modules/urge_cabinets/bindings/urge_cabinets_binding.dart';
import 'package:raintree/app/modules/urge_cabinets/views/urge_cabinets_view.dart';
import 'package:raintree/app/modules/use_records/bindings/use_records_binding.dart';
import 'package:raintree/app/modules/use_records/views/use_records_view.dart';
import 'package:raintree/app/modules/use_records_detail/bindings/use_records_detail_binding.dart';
import 'package:raintree/app/modules/use_records_detail/views/use_records_detail_view.dart';
import 'package:raintree/app/modules/user_combo/bindings/user_combo_binding.dart';
import 'package:raintree/app/modules/user_combo/views/user_combo_view.dart';
import 'package:raintree/app/modules/vehicle/bindings/vehicle_binding.dart';
import 'package:raintree/app/modules/vehicle/views/vehicle_view.dart';
import 'package:raintree/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:raintree/app/modules/wallet/views/wallet_view.dart';

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
      middlewares: [RouteAuthMiddleware()],
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
    GetPage(
      name: _Paths.EXCHANGE_FINISH,
      page: () => ExchangeFinishView(),
      binding: ExchangeFinishBinding(),
    ),
    GetPage(
      name: _Paths.NOTICE_LIST,
      page: () => NoticeListView(),
      binding: NoticeListBinding(),
    ),
    GetPage(
      name: _Paths.NOTICE_DETAIL,
      page: () => NoticeDetailView(),
      binding: NoticeDetailBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_SERVICE,
      page: () => CustomerServiceView(),
      binding: CustomerServiceBinding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK,
      page: () => FeedbackView(),
      binding: FeedbackBinding(),
    ),
    GetPage(
      name: _Paths.URGE_CABINETS,
      page: () => UrgeCabinetsView(),
      binding: UrgeCabinetsBinding(),
    ),
    GetPage(
      name: _Paths.MULTILINGUAL,
      page: () => MultilingualView(),
      binding: MultilingualBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_MOBILE,
      page: () => EditMobileView(),
      binding: EditMobileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_NICKNAME,
      page: () => EditNicknameView(),
      binding: EditNicknameBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_ADDRESS,
      page: () => ProductAddressView(),
      binding: ProductAddressBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DETAIL,
      page: () => OrderDetailView(),
      binding: OrderDetailBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () => AdminView(),
      binding: AdminBinding(),
    ),
    GetPage(
      name: _Paths.BIND_CONTACT,
      page: () => BindContactView(),
      binding: BindContactBinding(),
    ),
    GetPage(
      name: _Paths.BIND_CAR,
      page: () => BindCarView(),
      binding: BindCarBinding(),
    ),
    GetPage(
      name: _Paths.BIND_SUCCESS,
      page: () => BindSuccessView(),
      binding: BindSuccessBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_PRODUCT_DETAIL,
      page: () => ShopProductDetailView(),
      binding: ShopProductDetailBinding(),
    ),
    GetPage(
      name: _Paths.SUBMIT_ORDER,
      page: () => SubmitOrderView(),
      binding: SubmitOrderBinding(),
    ),
    GetPage(
      name: _Paths.PAY_ORDER,
      page: () => PayOrderView(),
      binding: PayOrderBinding(),
    ),
    GetPage(
      name: _Paths.PAY_ORDER_SUCCESS,
      page: () => PayOrderSuccessView(),
      binding: PayOrderSuccessBinding(),
    ),
    GetPage(
      name: _Paths.USER_COMBO,
      page: () => UserComboView(),
      binding: UserComboBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ADDRESS,
      page: () => EditAddressView(),
      binding: EditAddressBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ADDRESS,
      page: () => AddAddressView(),
      binding: AddAddressBinding(),
    ),
    GetPage(
      name: _Paths.PAY_PACKAGE_LIST,
      page: () => PayPackageListView(),
      binding: PayPackageListBinding(),
    ),
    GetPage(
      name: _Paths.PAY_COMBO,
      page: () => PayComboView(),
      binding: PayComboBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.AGREEMENT,
      page: () => AgreementView(),
      binding: AgreementBinding(),
    ),
    GetPage(
      name: _Paths.USE_RECORDS,
      page: () => UseRecordsView(),
      binding: UseRecordsBinding(),
    ),
    GetPage(
      name: _Paths.USE_RECORDS_DETAIL,
      page: () => UseRecordsDetailView(),
      binding: UseRecordsDetailBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_ORDER_LIST,
      page: () => ShopOrderListView(),
      binding: ShopOrderListBinding(),
    ),
    GetPage(
      name: _Paths.COMMON_PROBLEM,
      page: () => CommonProblemView(),
      binding: CommonProblemBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_CABINET_LIST,
      page: () => AdminCabinetListView(),
      binding: AdminCabinetListBinding(),
    ),
  ];
}
