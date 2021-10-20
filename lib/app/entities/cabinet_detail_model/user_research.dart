import 'dart:convert';

class UserResearch {
  final String accountUid;
  final int batteryType;
  final String ctime;
  final String electricVehicleBrand;
  final bool hasItBeenTried;
  final int id;
  final String upTime;
  final String usageTime;
  UserResearch({
    required this.accountUid,
    required this.batteryType,
    required this.ctime,
    required this.electricVehicleBrand,
    required this.hasItBeenTried,
    required this.id,
    required this.upTime,
    required this.usageTime,
  });

  UserResearch copyWith({
    String? accountUid,
    int? batteryType,
    String? ctime,
    String? electricVehicleBrand,
    bool? hasItBeenTried,
    int? id,
    String? upTime,
    String? usageTime,
  }) {
    return UserResearch(
      accountUid: accountUid ?? this.accountUid,
      batteryType: batteryType ?? this.batteryType,
      ctime: ctime ?? this.ctime,
      electricVehicleBrand: electricVehicleBrand ?? this.electricVehicleBrand,
      hasItBeenTried: hasItBeenTried ?? this.hasItBeenTried,
      id: id ?? this.id,
      upTime: upTime ?? this.upTime,
      usageTime: usageTime ?? this.usageTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accountUid': accountUid,
      'batteryType': batteryType,
      'ctime': ctime,
      'electricVehicleBrand': electricVehicleBrand,
      'hasItBeenTried': hasItBeenTried,
      'id': id,
      'upTime': upTime,
      'usageTime': usageTime,
    };
  }

  factory UserResearch.fromMap(Map<String, dynamic> map) {
    return UserResearch(
      accountUid: map['accountUid'],
      batteryType: map['batteryType']?.toInt(),
      ctime: map['ctime'],
      electricVehicleBrand: map['electricVehicleBrand'],
      hasItBeenTried: map['hasItBeenTried'],
      id: map['id']?.toInt(),
      upTime: map['upTime'],
      usageTime: map['usageTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserResearch.fromJson(String source) => UserResearch.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserResearch(accountUid: $accountUid, batteryType: $batteryType, ctime: $ctime, electricVehicleBrand: $electricVehicleBrand, hasItBeenTried: $hasItBeenTried, id: $id, upTime: $upTime, usageTime: $usageTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserResearch &&
      other.accountUid == accountUid &&
      other.batteryType == batteryType &&
      other.ctime == ctime &&
      other.electricVehicleBrand == electricVehicleBrand &&
      other.hasItBeenTried == hasItBeenTried &&
      other.id == id &&
      other.upTime == upTime &&
      other.usageTime == usageTime;
  }

  @override
  int get hashCode {
    return accountUid.hashCode ^
      batteryType.hashCode ^
      ctime.hashCode ^
      electricVehicleBrand.hashCode ^
      hasItBeenTried.hashCode ^
      id.hashCode ^
      upTime.hashCode ^
      usageTime.hashCode;
  }
}