/*
 * @Author: Arsize 
 * @Date: 2021-10-09 18:09:17 
 * @Describe: 机柜列表数据
 */
class CabinetListModel {
  CabinetData? data;
  int? code;
  String? msg;

  CabinetListModel({this.data, this.code, this.msg});

  CabinetListModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? CabinetData.fromJson(json['data']) : null;
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

class CabinetData {
  List<CabinetList>? cabinetList;

  CabinetData({this.cabinetList});

  CabinetData.fromJson(Map<String, dynamic> json) {
    if (json['cabinetList'] != null) {
      cabinetList = <CabinetList>[];
      json['cabinetList'].forEach((v) {
        cabinetList!.add(CabinetList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cabinetList != null) {
      data['cabinetList'] = cabinetList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CabinetList {
  String? cabinetUid;
  double? userFromDistance;
  int? organizationId;
  int? agentId;
  int? status;
  String? nearbyPicurl;
  bool? powerOff;
  double? longitude;
  double? latitude;
  int? line;
  String? cabinetName;
  String? cabinetAddress;
  String? cabinetDid;
  String? qrCodeDid;
  int? chargingPortNum;
  int? canUseChargingPortNum;
  int? canUseExchangeBatteryNum;
  int? emptyBoxNum;
  List? batteryTypeAndNumDtoList;
  int? fullBatteryStd;
  Map<String, dynamic>? boxStatusMap;

  CabinetList(
      {this.cabinetUid,
      this.userFromDistance,
      this.organizationId,
      this.agentId,
      this.status,
      this.nearbyPicurl,
      this.powerOff,
      this.longitude,
      this.latitude,
      this.line,
      this.cabinetName,
      this.cabinetAddress,
      this.cabinetDid,
      this.qrCodeDid,
      this.chargingPortNum,
      this.canUseChargingPortNum,
      this.canUseExchangeBatteryNum,
      this.emptyBoxNum,
      this.batteryTypeAndNumDtoList,
      this.fullBatteryStd,
      this.boxStatusMap});

  CabinetList.fromJson(Map<String, dynamic> json) {
    cabinetUid = json['cabinetUid'];
    userFromDistance = json['userFromDistance'];
    organizationId = json['organizationId'];
    agentId = json['agentId'];
    status = json['status'];
    nearbyPicurl = json['nearbyPicurl'];
    powerOff = json['powerOff'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    line = json['line'];
    cabinetName = json['cabinetName'];
    cabinetAddress = json['cabinetAddress'];
    cabinetDid = json['cabinetDid'];
    qrCodeDid = json['qrCodeDid'];
    chargingPortNum = json['chargingPortNum'];
    canUseChargingPortNum = json['canUseChargingPortNum'];
    canUseExchangeBatteryNum = json['canUseExchangeBatteryNum'];
    emptyBoxNum = json['emptyBoxNum'];
    batteryTypeAndNumDtoList = json['batteryTypeAndNumDtoList'];
    fullBatteryStd = json['fullBatteryStd'];
    boxStatusMap = json['boxStatusMap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cabinetUid'] = cabinetUid;
    data['userFromDistance'] = userFromDistance;
    data['organizationId'] = organizationId;
    data['agentId'] = agentId;
    data['status'] = status;
    data['nearbyPicurl'] = nearbyPicurl;
    data['powerOff'] = powerOff;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['line'] = line;
    data['cabinetName'] = cabinetName;
    data['cabinetAddress'] = cabinetAddress;
    data['cabinetDid'] = cabinetDid;
    data['qrCodeDid'] = qrCodeDid;
    data['chargingPortNum'] = chargingPortNum;
    data['canUseChargingPortNum'] = canUseChargingPortNum;
    data['canUseExchangeBatteryNum'] = canUseExchangeBatteryNum;
    data['emptyBoxNum'] = emptyBoxNum;
    data['batteryTypeAndNumDtoList'] = batteryTypeAndNumDtoList;
    data['fullBatteryStd'] = fullBatteryStd;
    data['boxStatusMap'] = boxStatusMap;
    return data;
  }
}
