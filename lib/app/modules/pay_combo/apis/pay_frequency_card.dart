/*
 * @Author: Arsize 
 * @Date: 2021-10-22 15:57:21 
 * @Describe: 套餐购买
 */
import 'package:raintree/app/utils/utils.dart';

Future payFrequencyCard({frequencyCardId}) {
  return HTTP().request(
      responseType: "json",
      path: "pay/payFrequencyCard",
      methods: "post",
      data: {
        "enetsPay": true,
        "frequencyCardId": frequencyCardId,
      }).then((value) {
    return value;
  });
}
