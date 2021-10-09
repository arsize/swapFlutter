import 'package:raintree/app/utils/utils.dart';

Future roundList() {
  return HTTP().request(
    path: "cabinet/map/roundList",
    methods: "get",
    params: {
      "latitude": 22.582657328817298,
      "organizationId": 2,
      "longitude": 113.86058293363483
    },
  ).then((value) => value);
}
