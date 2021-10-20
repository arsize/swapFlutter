import 'package:get/get.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/modules/product_address/apis/delete_address.dart';
import 'package:raintree/app/modules/product_address/apis/get_address_list.dart';

class ProductAddressController extends GetxController {
  // 控制器
  List addressList = [];
  AddressModel address = AddressModel();

  @override
  void onInit() async {
    getAddressList();
    super.onInit();
  }

  /// 获取地址列表
  void getAddressList() async {
    var _result = await getDeliveryAddressList();
    address = AddressModel.fromJson(_result);
    update();
  }

  delAddress(id) async {
    var _result = await deleteDeliveryAddress(adderssId: id);
    print(_result);
    getAddressList();
  }

  @override
  void onClose() {}
}
