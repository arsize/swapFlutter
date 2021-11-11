import 'dart:convert';

import 'package:raintree/app/utils/http/http_util.dart';

Future getBatteryBusinessList({latitude, longitude, organizationId}) {
  return HTTP().request(
    responseType: 'json',
    path: "shopBusiness/getBatteryBusinessList",
    methods: "get",
    params: {
      "latitude": 22.582657328817298,
      "organizationId": 2,
      "longitude": 113.86058293363483
    },
  ).then((value) {
    if (value["code"] != 200) {
    } else {
      return jsonEncode(value);
    }
  });
}
