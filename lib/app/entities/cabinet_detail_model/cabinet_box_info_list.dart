import 'dart:convert';

class CabinetBoxInfoList {
  final int boxSn;
  final int chargeStatus;
  CabinetBoxInfoList({
    required this.boxSn,
    required this.chargeStatus,
  });

  CabinetBoxInfoList copyWith({
    int? boxSn,
    int? chargeStatus,
  }) {
    return CabinetBoxInfoList(
      boxSn: boxSn ?? this.boxSn,
      chargeStatus: chargeStatus ?? this.chargeStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'boxSn': boxSn,
      'chargeStatus': chargeStatus,
    };
  }

  factory CabinetBoxInfoList.fromMap(Map<String, dynamic> map) {
    return CabinetBoxInfoList(
      boxSn: map['boxSn']?.toInt(),
      chargeStatus: map['chargeStatus']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CabinetBoxInfoList.fromJson(String source) => CabinetBoxInfoList.fromMap(json.decode(source));

  @override
  String toString() => 'CabinetBoxInfoList(boxSn: $boxSn, chargeStatus: $chargeStatus)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CabinetBoxInfoList &&
      other.boxSn == boxSn &&
      other.chargeStatus == chargeStatus;
  }

  @override
  int get hashCode => boxSn.hashCode ^ chargeStatus.hashCode;
}