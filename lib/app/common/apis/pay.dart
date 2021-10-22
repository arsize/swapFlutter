/*
 * @Author: Arsize 
 * @Date: 2021-10-22 16:42:15 
 * @Describe: 支付
 */
import 'package:raintree/app/utils/utils.dart';

Future payWalletBalanceRecharge({payMoney, payType}) {
  return HTTP().request(
    responseType: "json",
    path: "wallet/payWalletBalanceRecharge",
    methods: "post",
    data: {
      "payMoney": payMoney,
      "payType": payType,
    },
  ).then(
    (value) {
      if (value["code"] == 200) {
        return value;
      } else {
        var _msg = '';
      }
    },
  );
}
