import 'package:get/get.dart';
import 'package:raintree/app/entities/address_model.dart';
import 'package:raintree/app/modules/product_address/apis/get_address_list.dart';

class ProductAddressController extends GetxController {
  List addressList = [];
  AddressModel address = AddressModel();

  @override
  void onInit() async {
    await getAddressList();
    super.onInit();
  }

  Future getAddressList() async {
    print(1);
    var _result = await getDeliveryAddressList();
    print(2);
    address = AddressModel.fromJson(_result);
    update();
  }

  @override
  void onClose() {}
}
