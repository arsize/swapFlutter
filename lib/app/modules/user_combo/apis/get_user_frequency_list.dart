/*
 * @Author: Arsize 
 * @Date: 2021-10-22 09:54:32 
 * @Describe: 用户套餐列表
 */
import 'package:raintree/app/utils/utils.dart';

Future getUserFrequencyCardList() {
  return HTTP()
      .request(
    path: "wallet/getUserFrequencyCardList",
    methods: "get",
  )
      .then(
    (value) {
      return value;
    },
  );
}
