/*
 * @Author: Arsize 
 * @Date: 2021-10-18 16:24:14 
 * @Describe: 用户信息
 */
class UserModel {
  UserData? data;
  int? code;
  String? msg;

  UserModel({this.data, this.code, this.msg});

  UserModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
    code = json['code'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['data'] = data?.toJson();
    result['code'] = code;
    result['msg'] = msg;
    return result;
  }
}

class UserData {
  String? userUid;
  bool? bindVehicle;
  String? bindVehicleSn;
  double? walletMoney;
  int? totalSurplusNum;
  int? currentMonthOrderCount;

  UserData(
      {this.userUid,
      this.bindVehicle,
      this.bindVehicleSn,
      this.walletMoney,
      this.totalSurplusNum,
      this.currentMonthOrderCount});

  UserData.fromJson(Map<String, dynamic> json) {
    userUid = json['userUid'];
    bindVehicle = json['bindVehicle'];
    bindVehicleSn = json['bindVehicleSn'];
    walletMoney = json['walletMoney'];
    totalSurplusNum = json['totalSurplusNum'];
    currentMonthOrderCount = json['currentMonthOrderCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userUid'] = userUid;
    data['bindVehicle'] = bindVehicle;
    data['bindVehicleSn'] = bindVehicleSn;
    data['walletMoney'] = walletMoney;
    data['totalSurplusNum'] = totalSurplusNum;
    data['currentMonthOrderCount'] = currentMonthOrderCount;
    return data;
  }
}
