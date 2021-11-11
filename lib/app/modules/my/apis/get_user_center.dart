/*
 * @Author: Arsize 
 * @Date: 2021-09-27 14:11:49 
 * @Describe: 获取个人中心数据
 */
import 'package:raintree/app/utils/http/http_util.dart';

Future getUserCenterData() {
  return HTTP().request(
    loading: false,
    path: "app/wx/userCenter",
    methods: "get",
    data: {},
  ).then((value) => value);
}
