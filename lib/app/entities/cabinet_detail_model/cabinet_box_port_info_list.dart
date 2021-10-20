import 'dart:convert';

class CabinetBoxPortInfoList {
  final int boxPortSn;
  final int chargeStatus;
  CabinetBoxPortInfoList({
    required this.boxPortSn,
    required this.chargeStatus,
  });

  CabinetBoxPortInfoList copyWith({
    int? boxPortSn,
    int? chargeStatus,
  }) {
    return CabinetBoxPortInfoList(
      boxPortSn: boxPortSn ?? this.boxPortSn,
      chargeStatus: chargeStatus ?? this.chargeStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'boxPortSn': boxPortSn,
      'chargeStatus': chargeStatus,
    };
  }

  factory CabinetBoxPortInfoList.fromMap(Map<String, dynamic> map) {
    return CabinetBoxPortInfoList(
      boxPortSn: map['boxPortSn']?.toInt(),
      chargeStatus: map['chargeStatus']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CabinetBoxPortInfoList.fromJson(String source) => CabinetBoxPortInfoList.fromMap(json.decode(source));

  @override
  String toString() => 'CabinetBoxPortInfoList(boxPortSn: $boxPortSn, chargeStatus: $chargeStatus)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CabinetBoxPortInfoList &&
      other.boxPortSn == boxPortSn &&
      other.chargeStatus == chargeStatus;
  }

  @override
  int get hashCode => boxPortSn.hashCode ^ chargeStatus.hashCode;
}