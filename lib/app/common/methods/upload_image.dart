/*
 * @Author: Arsize 
 * @Date: 2021-11-11 17:57:20 
 * @Describe: 上传图片
 */

import 'package:raintree/app/utils/utils.dart';

Future upLoadImage({base64Data, floderName}) async {
  return HTTP().request(
    path: "file_update/add_file_base64",
    methods: "post",
    data: {
      "base64Data": base64Data,
      "floderName": floderName,
    },
  ).then((value) => value);
}
