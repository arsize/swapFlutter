import 'dart:convert';

class Data {
  final bool bindVehicle;
  final String bindVehicleSn;
  final int currentMonthOrderCount;
  final int? totalSurplusNum;
  final String userUid;
  final int walletMoney;
  Data({
    required this.bindVehicle,
    required this.bindVehicleSn,
    required this.currentMonthOrderCount,
    required this.totalSurplusNum,
    required this.userUid,
    required this.walletMoney,
  });

  Data copyWith({
    bool? bindVehicle,
    String? bindVehicleSn,
    int? currentMonthOrderCount,
    int? totalSurplusNum,
    String? userUid,
    int? walletMoney,
  }) {
    return Data(
      bindVehicle: bindVehicle ?? this.bindVehicle,
      bindVehicleSn: bindVehicleSn ?? this.bindVehicleSn,
      currentMonthOrderCount:
          currentMonthOrderCount ?? this.currentMonthOrderCount,
      totalSurplusNum: totalSurplusNum ?? this.totalSurplusNum,
      userUid: userUid ?? this.userUid,
      walletMoney: walletMoney ?? this.walletMoney,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bindVehicle': bindVehicle,
      'bindVehicleSn': bindVehicleSn,
      'currentMonthOrderCount': currentMonthOrderCount,
      'totalSurplusNum': totalSurplusNum,
      'userUid': userUid,
      'walletMoney': walletMoney,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      bindVehicle: map['bindVehicle'],
      bindVehicleSn: map['bindVehicleSn'],
      currentMonthOrderCount: map['currentMonthOrderCount']?.toInt(),
      totalSurplusNum: map['totalSurplusNum']?.toInt(),
      userUid: map['userUid'],
      walletMoney: map['walletMoney']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(bindVehicle: $bindVehicle, bindVehicleSn: $bindVehicleSn, currentMonthOrderCount: $currentMonthOrderCount, totalSurplusNum: $totalSurplusNum, userUid: $userUid, walletMoney: $walletMoney)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.bindVehicle == bindVehicle &&
        other.bindVehicleSn == bindVehicleSn &&
        other.currentMonthOrderCount == currentMonthOrderCount &&
        other.totalSurplusNum == totalSurplusNum &&
        other.userUid == userUid &&
        other.walletMoney == walletMoney;
  }

  @override
  int get hashCode {
    return bindVehicle.hashCode ^
        bindVehicleSn.hashCode ^
        currentMonthOrderCount.hashCode ^
        totalSurplusNum.hashCode ^
        userUid.hashCode ^
        walletMoney.hashCode;
  }
}
