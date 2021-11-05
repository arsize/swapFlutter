/*
 * @Author: Arsize 
 * @Date: 2021-10-11 10:51:01 
 * @Describe: 地图机柜
 */

import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/modules/home/apis/round_list.dart';

mixin Cabinet {
  Future<CabinetListModel?> getCabinets() async {
    var _value = await roundList();
    if (_value != null) {
      return CabinetListModel.fromJson(_value);
    }
  }

  /// 判断机柜状态及可换电数量
  /// failure-断电
  /// offline-离线
  /// forbidden-禁用
  String cabinetBoxStatus(item) {
    if (item.powerOff == true) {
      return 'failure';
    }
    if (item.line == 0) {
      return 'failure';
    }
    if (item.status == 1) {
      return 'failure';
    }
    return (item.canUseExchangeBatteryNum ?? '0').toString();
  }
}
