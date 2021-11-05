import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'box_list.dart';

class Record {
  final String? address;
  final int? agentId;
  final String? areaCode;
  final List<BoxList>? boxList;
  final String? cabinetInfo;
  final int? cabinetType;
  final int? ctime;
  final String? did;
  final int? fullBatteryStd;
  final int? id;
  final String? introduce;
  final String? lampVersion;
  final int? lastOfflineTime;
  final int? lastOnlineTime;
  final int? latitude;
  final String? lightTime;
  final int? line;
  final int? longitude;
  final String? name;
  final String? nearbyPicurl;
  final int? organizationId;
  final bool? powerOff;
  final String? qrCodeContent;
  final String? qrCodeDid;
  final String? qrCodeUrl;
  final String? screenLanguage;
  final int? shareBenefitRuleId;
  final String? simIccid;
  final int? soundStatus;
  final int? status;
  final bool? supportCharger;
  final String? uid;
  final int? uptime;
  final String? version;
  final int? workType;
  Record({
    this.address,
    this.agentId,
    this.areaCode,
    this.boxList,
    this.cabinetInfo,
    this.cabinetType,
    this.ctime,
    this.did,
    this.fullBatteryStd,
    this.id,
    this.introduce,
    this.lampVersion,
    this.lastOfflineTime,
    this.lastOnlineTime,
    this.latitude,
    this.lightTime,
    this.line,
    this.longitude,
    this.name,
    this.nearbyPicurl,
    this.organizationId,
    this.powerOff,
    this.qrCodeContent,
    this.qrCodeDid,
    this.qrCodeUrl,
    this.screenLanguage,
    this.shareBenefitRuleId,
    this.simIccid,
    this.soundStatus,
    this.status,
    this.supportCharger,
    this.uid,
    this.uptime,
    this.version,
    this.workType,
  });

  Record copyWith({
    String? address,
    int? agentId,
    String? areaCode,
    List<BoxList>? boxList,
    String? cabinetInfo,
    int? cabinetType,
    int? ctime,
    String? did,
    int? fullBatteryStd,
    int? id,
    String? introduce,
    String? lampVersion,
    int? lastOfflineTime,
    int? lastOnlineTime,
    int? latitude,
    String? lightTime,
    int? line,
    int? longitude,
    String? name,
    String? nearbyPicurl,
    int? organizationId,
    bool? powerOff,
    String? qrCodeContent,
    String? qrCodeDid,
    String? qrCodeUrl,
    String? screenLanguage,
    int? shareBenefitRuleId,
    String? simIccid,
    int? soundStatus,
    int? status,
    bool? supportCharger,
    String? uid,
    int? uptime,
    String? version,
    int? workType,
  }) {
    return Record(
      address: address ?? this.address,
      agentId: agentId ?? this.agentId,
      areaCode: areaCode ?? this.areaCode,
      boxList: boxList ?? this.boxList,
      cabinetInfo: cabinetInfo ?? this.cabinetInfo,
      cabinetType: cabinetType ?? this.cabinetType,
      ctime: ctime ?? this.ctime,
      did: did ?? this.did,
      fullBatteryStd: fullBatteryStd ?? this.fullBatteryStd,
      id: id ?? this.id,
      introduce: introduce ?? this.introduce,
      lampVersion: lampVersion ?? this.lampVersion,
      lastOfflineTime: lastOfflineTime ?? this.lastOfflineTime,
      lastOnlineTime: lastOnlineTime ?? this.lastOnlineTime,
      latitude: latitude ?? this.latitude,
      lightTime: lightTime ?? this.lightTime,
      line: line ?? this.line,
      longitude: longitude ?? this.longitude,
      name: name ?? this.name,
      nearbyPicurl: nearbyPicurl ?? this.nearbyPicurl,
      organizationId: organizationId ?? this.organizationId,
      powerOff: powerOff ?? this.powerOff,
      qrCodeContent: qrCodeContent ?? this.qrCodeContent,
      qrCodeDid: qrCodeDid ?? this.qrCodeDid,
      qrCodeUrl: qrCodeUrl ?? this.qrCodeUrl,
      screenLanguage: screenLanguage ?? this.screenLanguage,
      shareBenefitRuleId: shareBenefitRuleId ?? this.shareBenefitRuleId,
      simIccid: simIccid ?? this.simIccid,
      soundStatus: soundStatus ?? this.soundStatus,
      status: status ?? this.status,
      supportCharger: supportCharger ?? this.supportCharger,
      uid: uid ?? this.uid,
      uptime: uptime ?? this.uptime,
      version: version ?? this.version,
      workType: workType ?? this.workType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'agentId': agentId,
      'areaCode': areaCode,
      'boxList': boxList?.map((x) => x.toMap()).toList(),
      'cabinetInfo': cabinetInfo,
      'cabinetType': cabinetType,
      'ctime': ctime,
      'did': did,
      'fullBatteryStd': fullBatteryStd,
      'id': id,
      'introduce': introduce,
      'lampVersion': lampVersion,
      'lastOfflineTime': lastOfflineTime,
      'lastOnlineTime': lastOnlineTime,
      'latitude': latitude,
      'lightTime': lightTime,
      'line': line,
      'longitude': longitude,
      'name': name,
      'nearbyPicurl': nearbyPicurl,
      'organizationId': organizationId,
      'powerOff': powerOff,
      'qrCodeContent': qrCodeContent,
      'qrCodeDid': qrCodeDid,
      'qrCodeUrl': qrCodeUrl,
      'screenLanguage': screenLanguage,
      'shareBenefitRuleId': shareBenefitRuleId,
      'simIccid': simIccid,
      'soundStatus': soundStatus,
      'status': status,
      'supportCharger': supportCharger,
      'uid': uid,
      'uptime': uptime,
      'version': version,
      'workType': workType,
    };
  }

  factory Record.fromMap(Map<String, dynamic> map) {
    print("啥啊这是");
    print(map['lightTime']);
    return Record(
      address: map['address'],
      agentId: map['agentId']?.toInt(),
      areaCode: map['areaCode'],
      boxList: List<BoxList>.from(
          (map['boxList'] ?? [])?.map((x) => BoxList.fromMap(x))),
      cabinetInfo: map['cabinetInfo'],
      cabinetType: map['cabinetType']?.toInt(),
      ctime: map['ctime']?.toInt(),
      did: map['did'],
      fullBatteryStd: map['fullBatteryStd']?.toInt(),
      id: map['id']?.toInt(),
      introduce: map['introduce'],
      lampVersion: map['lampVersion'],
      lastOfflineTime: map['lastOfflineTime']?.toInt(),
      lastOnlineTime: map['lastOnlineTime']?.toInt(),
      latitude: map['latitude']?.toInt(),
      lightTime: map['lightTime'],
      line: map['line']?.toInt(),
      longitude: map['longitude']?.toInt(),
      name: map['name'],
      nearbyPicurl: map['nearbyPicurl'],
      organizationId: map['organizationId']?.toInt(),
      powerOff: map['powerOff'],
      qrCodeContent: map['qrCodeContent'],
      qrCodeDid: map['qrCodeDid'],
      qrCodeUrl: map['qrCodeUrl'],
      screenLanguage: map['screenLanguage'],
      shareBenefitRuleId: map['shareBenefitRuleId']?.toInt(),
      simIccid: map['simIccid'],
      soundStatus: map['soundStatus']?.toInt(),
      status: map['status']?.toInt(),
      supportCharger: map['supportCharger'],
      uid: map['uid'],
      uptime: map['uptime']?.toInt(),
      version: map['version'],
      workType: map['workType']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Record.fromJson(String source) => Record.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Record(address: $address, agentId: $agentId, areaCode: $areaCode, boxList: $boxList, cabinetInfo: $cabinetInfo, cabinetType: $cabinetType, ctime: $ctime, did: $did, fullBatteryStd: $fullBatteryStd, id: $id, introduce: $introduce, lampVersion: $lampVersion, lastOfflineTime: $lastOfflineTime, lastOnlineTime: $lastOnlineTime, latitude: $latitude, lightTime: $lightTime, line: $line, longitude: $longitude, name: $name, nearbyPicurl: $nearbyPicurl, organizationId: $organizationId, powerOff: $powerOff, qrCodeContent: $qrCodeContent, qrCodeDid: $qrCodeDid, qrCodeUrl: $qrCodeUrl, screenLanguage: $screenLanguage, shareBenefitRuleId: $shareBenefitRuleId, simIccid: $simIccid, soundStatus: $soundStatus, status: $status, supportCharger: $supportCharger, uid: $uid, uptime: $uptime, version: $version, workType: $workType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Record &&
        other.address == address &&
        other.agentId == agentId &&
        other.areaCode == areaCode &&
        listEquals(other.boxList, boxList) &&
        other.cabinetInfo == cabinetInfo &&
        other.cabinetType == cabinetType &&
        other.ctime == ctime &&
        other.did == did &&
        other.fullBatteryStd == fullBatteryStd &&
        other.id == id &&
        other.introduce == introduce &&
        other.lampVersion == lampVersion &&
        other.lastOfflineTime == lastOfflineTime &&
        other.lastOnlineTime == lastOnlineTime &&
        other.latitude == latitude &&
        other.lightTime == lightTime &&
        other.line == line &&
        other.longitude == longitude &&
        other.name == name &&
        other.nearbyPicurl == nearbyPicurl &&
        other.organizationId == organizationId &&
        other.powerOff == powerOff &&
        other.qrCodeContent == qrCodeContent &&
        other.qrCodeDid == qrCodeDid &&
        other.qrCodeUrl == qrCodeUrl &&
        other.screenLanguage == screenLanguage &&
        other.shareBenefitRuleId == shareBenefitRuleId &&
        other.simIccid == simIccid &&
        other.soundStatus == soundStatus &&
        other.status == status &&
        other.supportCharger == supportCharger &&
        other.uid == uid &&
        other.uptime == uptime &&
        other.version == version &&
        other.workType == workType;
  }

  @override
  int get hashCode {
    return address.hashCode ^
        agentId.hashCode ^
        areaCode.hashCode ^
        boxList.hashCode ^
        cabinetInfo.hashCode ^
        cabinetType.hashCode ^
        ctime.hashCode ^
        did.hashCode ^
        fullBatteryStd.hashCode ^
        id.hashCode ^
        introduce.hashCode ^
        lampVersion.hashCode ^
        lastOfflineTime.hashCode ^
        lastOnlineTime.hashCode ^
        latitude.hashCode ^
        lightTime.hashCode ^
        line.hashCode ^
        longitude.hashCode ^
        name.hashCode ^
        nearbyPicurl.hashCode ^
        organizationId.hashCode ^
        powerOff.hashCode ^
        qrCodeContent.hashCode ^
        qrCodeDid.hashCode ^
        qrCodeUrl.hashCode ^
        screenLanguage.hashCode ^
        shareBenefitRuleId.hashCode ^
        simIccid.hashCode ^
        soundStatus.hashCode ^
        status.hashCode ^
        supportCharger.hashCode ^
        uid.hashCode ^
        uptime.hashCode ^
        version.hashCode ^
        workType.hashCode;
  }
}
