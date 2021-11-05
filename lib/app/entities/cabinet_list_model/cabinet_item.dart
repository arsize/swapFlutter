import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'battery_type_and_num_dto_list.dart';

class CabinetItem {
  final int agentId;
  final List<BatteryTypeAndNumDtoList>? batteryTypeAndNumDtoList;
  final Map<dynamic, dynamic>? boxStatusMap;
  final String? cabinetAddress;
  final String? cabinetDid;
  final String? cabinetName;
  final String? cabinetUid;
  final int? canUseChargingPortNum;
  final int? canUseExchangeBatteryNum;
  final int? chargingPortNum;
  final int? emptyBoxNum;
  final int? fullBatteryStd;
  final double? latitude;
  final int? line;
  final double? longitude;
  final String? nearbyPicurl;
  final int? organizationId;
  final Map<dynamic, dynamic>? portStatusMap;
  final bool? powerOff;
  final String? qrCodeDid;
  final int? status;
  final double? userFromDistance;
  CabinetItem({
    required this.agentId,
    this.batteryTypeAndNumDtoList,
    this.boxStatusMap,
    this.cabinetAddress,
    this.cabinetDid,
    this.cabinetName,
    this.cabinetUid,
    this.canUseChargingPortNum,
    this.canUseExchangeBatteryNum,
    this.chargingPortNum,
    this.emptyBoxNum,
    this.fullBatteryStd,
    this.latitude,
    this.line,
    this.longitude,
    this.nearbyPicurl,
    this.organizationId,
    this.portStatusMap,
    this.powerOff,
    this.qrCodeDid,
    this.status,
    this.userFromDistance,
  });

  CabinetItem copyWith({
    int? agentId,
    List<BatteryTypeAndNumDtoList>? batteryTypeAndNumDtoList,
    Map<dynamic, dynamic>? boxStatusMap,
    String? cabinetAddress,
    String? cabinetDid,
    String? cabinetName,
    String? cabinetUid,
    int? canUseChargingPortNum,
    int? canUseExchangeBatteryNum,
    int? chargingPortNum,
    int? emptyBoxNum,
    int? fullBatteryStd,
    double? latitude,
    int? line,
    double? longitude,
    String? nearbyPicurl,
    int? organizationId,
    Map<dynamic, dynamic>? portStatusMap,
    bool? powerOff,
    String? qrCodeDid,
    int? status,
    double? userFromDistance,
  }) {
    return CabinetItem(
      agentId: agentId ?? this.agentId,
      batteryTypeAndNumDtoList:
          batteryTypeAndNumDtoList ?? this.batteryTypeAndNumDtoList,
      boxStatusMap: boxStatusMap ?? this.boxStatusMap,
      cabinetAddress: cabinetAddress ?? this.cabinetAddress,
      cabinetDid: cabinetDid ?? this.cabinetDid,
      cabinetName: cabinetName ?? this.cabinetName,
      cabinetUid: cabinetUid ?? this.cabinetUid,
      canUseChargingPortNum:
          canUseChargingPortNum ?? this.canUseChargingPortNum,
      canUseExchangeBatteryNum:
          canUseExchangeBatteryNum ?? this.canUseExchangeBatteryNum,
      chargingPortNum: chargingPortNum ?? this.chargingPortNum,
      emptyBoxNum: emptyBoxNum ?? this.emptyBoxNum,
      fullBatteryStd: fullBatteryStd ?? this.fullBatteryStd,
      latitude: latitude ?? this.latitude,
      line: line ?? this.line,
      longitude: longitude ?? this.longitude,
      nearbyPicurl: nearbyPicurl ?? this.nearbyPicurl,
      organizationId: organizationId ?? this.organizationId,
      portStatusMap: portStatusMap ?? this.portStatusMap,
      powerOff: powerOff ?? this.powerOff,
      qrCodeDid: qrCodeDid ?? this.qrCodeDid,
      status: status ?? this.status,
      userFromDistance: userFromDistance ?? this.userFromDistance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'agentId': agentId,
      'batteryTypeAndNumDtoList':
          batteryTypeAndNumDtoList?.map((x) => x.toMap()).toList(),
      'boxStatusMap': boxStatusMap,
      'cabinetAddress': cabinetAddress,
      'cabinetDid': cabinetDid,
      'cabinetName': cabinetName,
      'cabinetUid': cabinetUid,
      'canUseChargingPortNum': canUseChargingPortNum,
      'canUseExchangeBatteryNum': canUseExchangeBatteryNum,
      'chargingPortNum': chargingPortNum,
      'emptyBoxNum': emptyBoxNum,
      'fullBatteryStd': fullBatteryStd,
      'latitude': latitude,
      'line': line,
      'longitude': longitude,
      'nearbyPicurl': nearbyPicurl,
      'organizationId': organizationId,
      'portStatusMap': portStatusMap,
      'powerOff': powerOff,
      'qrCodeDid': qrCodeDid,
      'status': status,
      'userFromDistance': userFromDistance,
    };
  }

  factory CabinetItem.fromMap(Map<String, dynamic> map) {
    return CabinetItem(
      agentId: map['agentId']?.toInt(),
      batteryTypeAndNumDtoList: List<BatteryTypeAndNumDtoList>.from(
          (map['batteryTypeAndNumDtoList'] ?? [])
              .map((x) => BatteryTypeAndNumDtoList.fromMap(x))),
      boxStatusMap: map['boxStatusMap'],
      cabinetAddress: map['cabinetAddress'],
      cabinetDid: map['cabinetDid'],
      cabinetName: map['cabinetName'],
      cabinetUid: map['cabinetUid'],
      canUseChargingPortNum: map['canUseChargingPortNum']?.toInt(),
      canUseExchangeBatteryNum: map['canUseExchangeBatteryNum']?.toInt(),
      chargingPortNum: map['chargingPortNum']?.toInt(),
      emptyBoxNum: map['emptyBoxNum']?.toInt(),
      fullBatteryStd: map['fullBatteryStd']?.toInt(),
      latitude: map['latitude']?.toDouble(),
      line: map['line']?.toInt(),
      longitude: map['longitude']?.toDouble(),
      nearbyPicurl: map['nearbyPicurl'],
      organizationId: map['organizationId']?.toInt(),
      portStatusMap: map['portStatusMap'],
      powerOff: map['powerOff'],
      qrCodeDid: map['qrCodeDid'],
      status: map['status']?.toInt(),
      userFromDistance: map['userFromDistance']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CabinetItem.fromJson(String source) =>
      CabinetItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CabinetItem(agentId: $agentId, batteryTypeAndNumDtoList: $batteryTypeAndNumDtoList, boxStatusMap: $boxStatusMap, cabinetAddress: $cabinetAddress, cabinetDid: $cabinetDid, cabinetName: $cabinetName, cabinetUid: $cabinetUid, canUseChargingPortNum: $canUseChargingPortNum, canUseExchangeBatteryNum: $canUseExchangeBatteryNum, chargingPortNum: $chargingPortNum, emptyBoxNum: $emptyBoxNum, fullBatteryStd: $fullBatteryStd, latitude: $latitude, line: $line, longitude: $longitude, nearbyPicurl: $nearbyPicurl, organizationId: $organizationId, portStatusMap: $portStatusMap, powerOff: $powerOff, qrCodeDid: $qrCodeDid, status: $status, userFromDistance: $userFromDistance)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CabinetItem &&
        other.agentId == agentId &&
        listEquals(other.batteryTypeAndNumDtoList, batteryTypeAndNumDtoList) &&
        other.boxStatusMap == boxStatusMap &&
        other.cabinetAddress == cabinetAddress &&
        other.cabinetDid == cabinetDid &&
        other.cabinetName == cabinetName &&
        other.cabinetUid == cabinetUid &&
        other.canUseChargingPortNum == canUseChargingPortNum &&
        other.canUseExchangeBatteryNum == canUseExchangeBatteryNum &&
        other.chargingPortNum == chargingPortNum &&
        other.emptyBoxNum == emptyBoxNum &&
        other.fullBatteryStd == fullBatteryStd &&
        other.latitude == latitude &&
        other.line == line &&
        other.longitude == longitude &&
        other.nearbyPicurl == nearbyPicurl &&
        other.organizationId == organizationId &&
        other.portStatusMap == portStatusMap &&
        other.powerOff == powerOff &&
        other.qrCodeDid == qrCodeDid &&
        other.status == status &&
        other.userFromDistance == userFromDistance;
  }

  @override
  int get hashCode {
    return agentId.hashCode ^
        batteryTypeAndNumDtoList.hashCode ^
        boxStatusMap.hashCode ^
        cabinetAddress.hashCode ^
        cabinetDid.hashCode ^
        cabinetName.hashCode ^
        cabinetUid.hashCode ^
        canUseChargingPortNum.hashCode ^
        canUseExchangeBatteryNum.hashCode ^
        chargingPortNum.hashCode ^
        emptyBoxNum.hashCode ^
        fullBatteryStd.hashCode ^
        latitude.hashCode ^
        line.hashCode ^
        longitude.hashCode ^
        nearbyPicurl.hashCode ^
        organizationId.hashCode ^
        portStatusMap.hashCode ^
        powerOff.hashCode ^
        qrCodeDid.hashCode ^
        status.hashCode ^
        userFromDistance.hashCode;
  }
}
