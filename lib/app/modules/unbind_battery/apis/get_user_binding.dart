import 'dart:convert';

import 'package:raintree/app/utils/http/http_util.dart';

Future getUserBindingInformation2({mobile}) {
  return HTTP().request(
    responseType: 'json',
    loading: false,
    path: "unbindBattery/getUserBindingInformation2",
    methods: "get",
    params: {
      "mobile": mobile,
      "organizationId": 2,
    },
  ).then((value) {
    if (value["code"] != 200) {
    } else {
      return jsonEncode(value);
    }
  });
}
