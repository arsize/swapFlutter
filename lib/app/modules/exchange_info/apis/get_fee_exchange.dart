import 'package:raintree/app/utils/utils.dart';

Future getFeeExchange() {
  return HTTP()
      .request(
    path: "app/ctl/getFeeExchange",
    methods: "get",
  )
      .then(
    (value) {
      return value;
    },
  );
}
