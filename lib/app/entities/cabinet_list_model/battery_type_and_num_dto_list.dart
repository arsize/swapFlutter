import 'dart:convert';

class BatteryTypeAndNumDtoList {
  final int batteryTypeId;
  final String batteryTypeName;
  final int fullPowerNum;
  final int highPowerNum;
  final int lowPowerNum;
  final int mediumPowerNum;
  final int num;
  BatteryTypeAndNumDtoList({
    required this.batteryTypeId,
    required this.batteryTypeName,
    required this.fullPowerNum,
    required this.highPowerNum,
    required this.lowPowerNum,
    required this.mediumPowerNum,
    required this.num,
  });

  BatteryTypeAndNumDtoList copyWith({
    int? batteryTypeId,
    String? batteryTypeName,
    int? fullPowerNum,
    int? highPowerNum,
    int? lowPowerNum,
    int? mediumPowerNum,
    int? num,
  }) {
    return BatteryTypeAndNumDtoList(
      batteryTypeId: batteryTypeId ?? this.batteryTypeId,
      batteryTypeName: batteryTypeName ?? this.batteryTypeName,
      fullPowerNum: fullPowerNum ?? this.fullPowerNum,
      highPowerNum: highPowerNum ?? this.highPowerNum,
      lowPowerNum: lowPowerNum ?? this.lowPowerNum,
      mediumPowerNum: mediumPowerNum ?? this.mediumPowerNum,
      num: num ?? this.num,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'batteryTypeId': batteryTypeId,
      'batteryTypeName': batteryTypeName,
      'fullPowerNum': fullPowerNum,
      'highPowerNum': highPowerNum,
      'lowPowerNum': lowPowerNum,
      'mediumPowerNum': mediumPowerNum,
      'num': num,
    };
  }

  factory BatteryTypeAndNumDtoList.fromMap(Map<String, dynamic> map) {
    return BatteryTypeAndNumDtoList(
      batteryTypeId: map['batteryTypeId']?.toInt(),
      batteryTypeName: map['batteryTypeName'],
      fullPowerNum: map['fullPowerNum']?.toInt(),
      highPowerNum: map['highPowerNum']?.toInt(),
      lowPowerNum: map['lowPowerNum']?.toInt(),
      mediumPowerNum: map['mediumPowerNum']?.toInt(),
      num: map['num']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BatteryTypeAndNumDtoList.fromJson(String source) => BatteryTypeAndNumDtoList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BatteryTypeAndNumDtoList(batteryTypeId: $batteryTypeId, batteryTypeName: $batteryTypeName, fullPowerNum: $fullPowerNum, highPowerNum: $highPowerNum, lowPowerNum: $lowPowerNum, mediumPowerNum: $mediumPowerNum, num: $num)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BatteryTypeAndNumDtoList &&
      other.batteryTypeId == batteryTypeId &&
      other.batteryTypeName == batteryTypeName &&
      other.fullPowerNum == fullPowerNum &&
      other.highPowerNum == highPowerNum &&
      other.lowPowerNum == lowPowerNum &&
      other.mediumPowerNum == mediumPowerNum &&
      other.num == num;
  }

  @override
  int get hashCode {
    return batteryTypeId.hashCode ^
      batteryTypeName.hashCode ^
      fullPowerNum.hashCode ^
      highPowerNum.hashCode ^
      lowPowerNum.hashCode ^
      mediumPowerNum.hashCode ^
      num.hashCode;
  }
}