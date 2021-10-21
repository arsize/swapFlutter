import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'fee_exchange_list.dart';

class Data {
  final int? id;
  final int? organizationId;
  final int? batteryTypeId;
  final int? status;
  final bool? recommendStatus;
  final String? exchangeExplain;
  final List<FeeExchangeList>? feeExchangeList;
  final int? upTime;
  final int? ctime;
  Data({
    this.id,
    this.organizationId,
    this.batteryTypeId,
    this.status,
    this.recommendStatus,
    this.exchangeExplain,
    this.feeExchangeList,
    this.upTime,
    this.ctime,
  });

  Data copyWith({
    int? id,
    int? organizationId,
    int? batteryTypeId,
    int? status,
    bool? recommendStatus,
    String? exchangeExplain,
    List<FeeExchangeList>? feeExchangeList,
    int? upTime,
    int? ctime,
  }) {
    return Data(
      id: id ?? this.id,
      organizationId: organizationId ?? this.organizationId,
      batteryTypeId: batteryTypeId ?? this.batteryTypeId,
      status: status ?? this.status,
      recommendStatus: recommendStatus ?? this.recommendStatus,
      exchangeExplain: exchangeExplain ?? this.exchangeExplain,
      feeExchangeList: feeExchangeList ?? this.feeExchangeList,
      upTime: upTime ?? this.upTime,
      ctime: ctime ?? this.ctime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'organizationId': organizationId,
      'batteryTypeId': batteryTypeId,
      'status': status,
      'recommendStatus': recommendStatus,
      'exchangeExplain': exchangeExplain,
      'feeExchangeList': feeExchangeList?.map((x) => x.toMap()).toList(),
      'upTime': upTime,
      'ctime': ctime,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      id: map['id']?.toInt(),
      organizationId: map['organizationId']?.toInt(),
      batteryTypeId: map['batteryTypeId']?.toInt(),
      status: map['status']?.toInt(),
      recommendStatus: map['recommendStatus'],
      exchangeExplain: map['exchangeExplain'],
      feeExchangeList: List<FeeExchangeList>.from((map['feeExchangeList'] ?? [])
          .map((x) => FeeExchangeList.fromMap(x))),
      upTime: map['upTime']?.toInt(),
      ctime: map['ctime']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(id: $id, organizationId: $organizationId, batteryTypeId: $batteryTypeId, status: $status, recommendStatus: $recommendStatus, exchangeExplain: $exchangeExplain, feeExchangeList: $feeExchangeList, upTime: $upTime, ctime: $ctime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.id == id &&
        other.organizationId == organizationId &&
        other.batteryTypeId == batteryTypeId &&
        other.status == status &&
        other.recommendStatus == recommendStatus &&
        other.exchangeExplain == exchangeExplain &&
        listEquals(other.feeExchangeList, feeExchangeList) &&
        other.upTime == upTime &&
        other.ctime == ctime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        organizationId.hashCode ^
        batteryTypeId.hashCode ^
        status.hashCode ^
        recommendStatus.hashCode ^
        exchangeExplain.hashCode ^
        feeExchangeList.hashCode ^
        upTime.hashCode ^
        ctime.hashCode;
  }
}
