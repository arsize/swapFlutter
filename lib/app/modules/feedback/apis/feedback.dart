/*
 * @Author: Arsize 
 * @Date: 2021-11-05 11:34:39 
 * @Describe: 意见反馈
 */
import 'dart:convert';

import 'package:raintree/app/utils/utils.dart';

Future feedbackFn(feedback) {
  return HTTP().request(
    responseType: 'json',
    path: "app/wx/feedback",
    methods: "post",
    data: {
      "feedback": feedback,
    },
  ).then(
    (value) {
      if (value["code"] != 200) {
      } else {
        return jsonEncode(value);
      }
    },
  );
}
