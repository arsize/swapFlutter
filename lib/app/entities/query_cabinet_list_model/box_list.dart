import 'dart:convert';

class BoxList {
  final String? batterySn;
  final int? batterySoc;
  final int? boxBatteryStatus;
  final String? boxName;
  final int? boxPortStatus;
  final int? boxSn;
  final int? boxStatus;
  final int? boxType;
  final int? boxUseStatus;
  final String? cabinetUid;
  final int? ctime;
  final int? disableType;
  final int? forecastMileage;
  final int? id;
  final int? uptime;
  BoxList({
    this.batterySn,
    this.batterySoc,
    this.boxBatteryStatus,
    this.boxName,
    this.boxPortStatus,
    this.boxSn,
    this.boxStatus,
    this.boxType,
    this.boxUseStatus,
    this.cabinetUid,
    this.ctime,
    this.disableType,
    this.forecastMileage,
    this.id,
    this.uptime,
  });

  BoxList copyWith({
    String? batterySn,
    int? batterySoc,
    int? boxBatteryStatus,
    String? boxName,
    int? boxPortStatus,
    int? boxSn,
    int? boxStatus,
    int? boxType,
    int? boxUseStatus,
    String? cabinetUid,
    int? ctime,
    int? disableType,
    int? forecastMileage,
    int? id,
    int? uptime,
  }) {
    return BoxList(
      batterySn: batterySn ?? this.batterySn,
      batterySoc: batterySoc ?? this.batterySoc,
      boxBatteryStatus: boxBatteryStatus ?? this.boxBatteryStatus,
      boxName: boxName ?? this.boxName,
      boxPortStatus: boxPortStatus ?? this.boxPortStatus,
      boxSn: boxSn ?? this.boxSn,
      boxStatus: boxStatus ?? this.boxStatus,
      boxType: boxType ?? this.boxType,
      boxUseStatus: boxUseStatus ?? this.boxUseStatus,
      cabinetUid: cabinetUid ?? this.cabinetUid,
      ctime: ctime ?? this.ctime,
      disableType: disableType ?? this.disableType,
      forecastMileage: forecastMileage ?? this.forecastMileage,
      id: id ?? this.id,
      uptime: uptime ?? this.uptime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'batterySn': batterySn,
      'batterySoc': batterySoc,
      'boxBatteryStatus': boxBatteryStatus,
      'boxName': boxName,
      'boxPortStatus': boxPortStatus,
      'boxSn': boxSn,
      'boxStatus': boxStatus,
      'boxType': boxType,
      'boxUseStatus': boxUseStatus,
      'cabinetUid': cabinetUid,
      'ctime': ctime,
      'disableType': disableType,
      'forecastMileage': forecastMileage,
      'id': id,
      'uptime': uptime,
    };
  }

  factory BoxList.fromMap(Map<String, dynamic> map) {
    return BoxList(
      batterySn: map['batterySn'],
      batterySoc: map['batterySoc']?.toInt(),
      boxBatteryStatus: map['boxBatteryStatus']?.toInt(),
      boxName: map['boxName'],
      boxPortStatus: map['boxPortStatus']?.toInt(),
      boxSn: map['boxSn']?.toInt(),
      boxStatus: map['boxStatus']?.toInt(),
      boxType: map['boxType']?.toInt(),
      boxUseStatus: map['boxUseStatus']?.toInt(),
      cabinetUid: map['cabinetUid'],
      ctime: map['ctime']?.toInt(),
      disableType: map['disableType']?.toInt(),
      forecastMileage: map['forecastMileage']?.toInt(),
      id: map['id']?.toInt(),
      uptime: map['uptime']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BoxList.fromJson(String source) =>
      BoxList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BoxList(batterySn: $batterySn, batterySoc: $batterySoc, boxBatteryStatus: $boxBatteryStatus, boxName: $boxName, boxPortStatus: $boxPortStatus, boxSn: $boxSn, boxStatus: $boxStatus, boxType: $boxType, boxUseStatus: $boxUseStatus, cabinetUid: $cabinetUid, ctime: $ctime, disableType: $disableType, forecastMileage: $forecastMileage, id: $id, uptime: $uptime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BoxList &&
        other.batterySn == batterySn &&
        other.batterySoc == batterySoc &&
        other.boxBatteryStatus == boxBatteryStatus &&
        other.boxName == boxName &&
        other.boxPortStatus == boxPortStatus &&
        other.boxSn == boxSn &&
        other.boxStatus == boxStatus &&
        other.boxType == boxType &&
        other.boxUseStatus == boxUseStatus &&
        other.cabinetUid == cabinetUid &&
        other.ctime == ctime &&
        other.disableType == disableType &&
        other.forecastMileage == forecastMileage &&
        other.id == id &&
        other.uptime == uptime;
  }

  @override
  int get hashCode {
    return batterySn.hashCode ^
        batterySoc.hashCode ^
        boxBatteryStatus.hashCode ^
        boxName.hashCode ^
        boxPortStatus.hashCode ^
        boxSn.hashCode ^
        boxStatus.hashCode ^
        boxType.hashCode ^
        boxUseStatus.hashCode ^
        cabinetUid.hashCode ^
        ctime.hashCode ^
        disableType.hashCode ^
        forecastMileage.hashCode ^
        id.hashCode ^
        uptime.hashCode;
  }
}
