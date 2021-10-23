import 'dart:convert';

class Record {
  final int? chargingStatus;
  final int? ctime;
  final int? exchangeStatus;
  final int? id;
  final double? money;
  final String? orderNo;
  final int? useType;
  Record({
    this.chargingStatus,
    this.ctime,
    this.exchangeStatus,
    this.id,
    this.money,
    this.orderNo,
    this.useType,
  });

  Record copyWith({
    int? chargingStatus,
    int? ctime,
    int? exchangeStatus,
    int? id,
    double? money,
    String? orderNo,
    int? useType,
  }) {
    return Record(
      chargingStatus: chargingStatus ?? this.chargingStatus,
      ctime: ctime ?? this.ctime,
      exchangeStatus: exchangeStatus ?? this.exchangeStatus,
      id: id ?? this.id,
      money: money ?? this.money,
      orderNo: orderNo ?? this.orderNo,
      useType: useType ?? this.useType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'chargingStatus': chargingStatus,
      'ctime': ctime,
      'exchangeStatus': exchangeStatus,
      'id': id,
      'money': money,
      'orderNo': orderNo,
      'useType': useType,
    };
  }

  factory Record.fromMap(Map<String, dynamic> map) {
    return Record(
      chargingStatus: map['chargingStatus']?.toInt(),
      ctime: map['ctime']?.toInt(),
      exchangeStatus: map['exchangeStatus']?.toInt(),
      id: map['id']?.toInt(),
      money: map['money']?.toDouble(),
      orderNo: map['orderNo'],
      useType: map['useType']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Record.fromJson(String source) => Record.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Record(chargingStatus: $chargingStatus, ctime: $ctime, exchangeStatus: $exchangeStatus, id: $id, money: $money, orderNo: $orderNo, useType: $useType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Record &&
        other.chargingStatus == chargingStatus &&
        other.ctime == ctime &&
        other.exchangeStatus == exchangeStatus &&
        other.id == id &&
        other.money == money &&
        other.orderNo == orderNo &&
        other.useType == useType;
  }

  @override
  int get hashCode {
    return chargingStatus.hashCode ^
        ctime.hashCode ^
        exchangeStatus.hashCode ^
        id.hashCode ^
        money.hashCode ^
        orderNo.hashCode ^
        useType.hashCode;
  }
}
