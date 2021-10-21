import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'cabinet_box_info_list.dart';
import 'cabinet_box_port_info_list.dart';
import 'user_frequency_card_record.dart';
import 'user_research.dart';

class Data {
  final List<CabinetBoxInfoList>? cabinetBoxInfoList;
  final List<CabinetBoxPortInfoList>? cabinetBoxPortInfoList;
  final String? cabinetDeviceId;
  final String? cabinetDid;
  final String? cabinetName;
  final bool? cabinetOnline;
  final int? cabinetType;
  final String? cabinetUid;
  final int? exChangeBatteryFee;
  final int? lowestSinglePrice;
  final int? money;
  final bool? powerOff;
  final String? prompt;
  final bool? recommendStatus;
  final List<dynamic>? subTemplateIdList;
  final int? userExchangeCount;
  final UserFrequencyCardRecord userFrequencyCardRecord;
  final UserResearch? userResearch;
  Data({
    this.cabinetBoxInfoList,
    this.cabinetBoxPortInfoList,
    this.cabinetDeviceId,
    this.cabinetDid,
    this.cabinetName,
    this.cabinetOnline,
    this.cabinetType,
    this.cabinetUid,
    this.exChangeBatteryFee,
    this.lowestSinglePrice,
    this.money,
    this.powerOff,
    this.prompt,
    this.recommendStatus,
    this.subTemplateIdList,
    this.userExchangeCount,
    required this.userFrequencyCardRecord,
    this.userResearch,
  });

  Data copyWith({
    List<CabinetBoxInfoList>? cabinetBoxInfoList,
    List<CabinetBoxPortInfoList>? cabinetBoxPortInfoList,
    String? cabinetDeviceId,
    String? cabinetDid,
    String? cabinetName,
    bool? cabinetOnline,
    int? cabinetType,
    String? cabinetUid,
    int? exChangeBatteryFee,
    int? lowestSinglePrice,
    int? money,
    bool? powerOff,
    String? prompt,
    bool? recommendStatus,
    List<dynamic>? subTemplateIdList,
    int? userExchangeCount,
    UserFrequencyCardRecord? userFrequencyCardRecord,
    UserResearch? userResearch,
  }) {
    return Data(
      cabinetBoxInfoList: cabinetBoxInfoList ?? this.cabinetBoxInfoList,
      cabinetBoxPortInfoList:
          cabinetBoxPortInfoList ?? this.cabinetBoxPortInfoList,
      cabinetDeviceId: cabinetDeviceId ?? this.cabinetDeviceId,
      cabinetDid: cabinetDid ?? this.cabinetDid,
      cabinetName: cabinetName ?? this.cabinetName,
      cabinetOnline: cabinetOnline ?? this.cabinetOnline,
      cabinetType: cabinetType ?? this.cabinetType,
      cabinetUid: cabinetUid ?? this.cabinetUid,
      exChangeBatteryFee: exChangeBatteryFee ?? this.exChangeBatteryFee,
      lowestSinglePrice: lowestSinglePrice ?? this.lowestSinglePrice,
      money: money ?? this.money,
      powerOff: powerOff ?? this.powerOff,
      prompt: prompt ?? this.prompt,
      recommendStatus: recommendStatus ?? this.recommendStatus,
      subTemplateIdList: subTemplateIdList ?? this.subTemplateIdList,
      userExchangeCount: userExchangeCount ?? this.userExchangeCount,
      userFrequencyCardRecord:
          userFrequencyCardRecord ?? this.userFrequencyCardRecord,
      userResearch: userResearch ?? this.userResearch,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cabinetBoxInfoList': cabinetBoxInfoList?.map((x) => x.toMap()).toList(),
      'cabinetBoxPortInfoList':
          cabinetBoxPortInfoList?.map((x) => x.toMap()).toList(),
      'cabinetDeviceId': cabinetDeviceId,
      'cabinetDid': cabinetDid,
      'cabinetName': cabinetName,
      'cabinetOnline': cabinetOnline,
      'cabinetType': cabinetType,
      'cabinetUid': cabinetUid,
      'exChangeBatteryFee': exChangeBatteryFee,
      'lowestSinglePrice': lowestSinglePrice,
      'money': money,
      'powerOff': powerOff,
      'prompt': prompt,
      'recommendStatus': recommendStatus,
      'subTemplateIdList': subTemplateIdList,
      'userExchangeCount': userExchangeCount,
      'userFrequencyCardRecord': userFrequencyCardRecord.toMap(),
      'userResearch': userResearch?.toMap(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      cabinetBoxInfoList: List<CabinetBoxInfoList>.from(
          (map['cabinetBoxInfoList'] ?? [])
              .map((x) => CabinetBoxInfoList.fromMap(x))),
      cabinetBoxPortInfoList: List<CabinetBoxPortInfoList>.from(
          (map['cabinetBoxPortInfoList'] ?? [])
              .map((x) => CabinetBoxPortInfoList.fromMap(x))),
      cabinetDeviceId: map['cabinetDeviceId'],
      cabinetDid: map['cabinetDid'],
      cabinetName: map['cabinetName'],
      cabinetOnline: map['cabinetOnline'],
      cabinetType: map['cabinetType']?.toInt(),
      cabinetUid: map['cabinetUid'],
      exChangeBatteryFee: map['exChangeBatteryFee']?.toInt(),
      lowestSinglePrice: map['lowestSinglePrice']?.toInt(),
      money: map['money']?.toInt(),
      powerOff: map['powerOff'],
      prompt: map['prompt'],
      recommendStatus: map['recommendStatus'],
      subTemplateIdList: List<dynamic>.from(map['subTemplateIdList'] ?? []),
      userExchangeCount: map['userExchangeCount']?.toInt(),
      userFrequencyCardRecord:
          UserFrequencyCardRecord.fromMap(map['userFrequencyCardRecord'] ?? {}),
      userResearch: UserResearch.fromMap(map['userResearch'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(cabinetBoxInfoList: $cabinetBoxInfoList, cabinetBoxPortInfoList: $cabinetBoxPortInfoList, cabinetDeviceId: $cabinetDeviceId, cabinetDid: $cabinetDid, cabinetName: $cabinetName, cabinetOnline: $cabinetOnline, cabinetType: $cabinetType, cabinetUid: $cabinetUid, exChangeBatteryFee: $exChangeBatteryFee, lowestSinglePrice: $lowestSinglePrice, money: $money, powerOff: $powerOff, prompt: $prompt, recommendStatus: $recommendStatus, subTemplateIdList: $subTemplateIdList, userExchangeCount: $userExchangeCount, userFrequencyCardRecord: $userFrequencyCardRecord, userResearch: $userResearch)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        listEquals(other.cabinetBoxInfoList, cabinetBoxInfoList) &&
        listEquals(other.cabinetBoxPortInfoList, cabinetBoxPortInfoList) &&
        other.cabinetDeviceId == cabinetDeviceId &&
        other.cabinetDid == cabinetDid &&
        other.cabinetName == cabinetName &&
        other.cabinetOnline == cabinetOnline &&
        other.cabinetType == cabinetType &&
        other.cabinetUid == cabinetUid &&
        other.exChangeBatteryFee == exChangeBatteryFee &&
        other.lowestSinglePrice == lowestSinglePrice &&
        other.money == money &&
        other.powerOff == powerOff &&
        other.prompt == prompt &&
        other.recommendStatus == recommendStatus &&
        listEquals(other.subTemplateIdList, subTemplateIdList) &&
        other.userExchangeCount == userExchangeCount &&
        other.userFrequencyCardRecord == userFrequencyCardRecord &&
        other.userResearch == userResearch;
  }

  @override
  int get hashCode {
    return cabinetBoxInfoList.hashCode ^
        cabinetBoxPortInfoList.hashCode ^
        cabinetDeviceId.hashCode ^
        cabinetDid.hashCode ^
        cabinetName.hashCode ^
        cabinetOnline.hashCode ^
        cabinetType.hashCode ^
        cabinetUid.hashCode ^
        exChangeBatteryFee.hashCode ^
        lowestSinglePrice.hashCode ^
        money.hashCode ^
        powerOff.hashCode ^
        prompt.hashCode ^
        recommendStatus.hashCode ^
        subTemplateIdList.hashCode ^
        userExchangeCount.hashCode ^
        userFrequencyCardRecord.hashCode ^
        userResearch.hashCode;
  }
}
