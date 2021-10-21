import 'dart:convert';

class FeeExchangeList {
  final int? id;
  final int? organizationId;
  final int? batteryTypeId;
  final int? exchangeRuleId;
  final int? price;
  final int? count;
  final int? shareMoney;
  final String? exchangeExplain;
  final int? upTime;
  final int? ctime;
  FeeExchangeList({
    this.id,
    this.organizationId,
    this.batteryTypeId,
    this.exchangeRuleId,
    this.price,
    this.count,
    this.shareMoney,
    this.exchangeExplain,
    this.upTime,
    this.ctime,
  });

  FeeExchangeList copyWith({
    int? id,
    int? organizationId,
    int? batteryTypeId,
    int? exchangeRuleId,
    int? price,
    int? count,
    int? shareMoney,
    String? exchangeExplain,
    int? upTime,
    int? ctime,
  }) {
    return FeeExchangeList(
      id: id ?? this.id,
      organizationId: organizationId ?? this.organizationId,
      batteryTypeId: batteryTypeId ?? this.batteryTypeId,
      exchangeRuleId: exchangeRuleId ?? this.exchangeRuleId,
      price: price ?? this.price,
      count: count ?? this.count,
      shareMoney: shareMoney ?? this.shareMoney,
      exchangeExplain: exchangeExplain ?? this.exchangeExplain,
      upTime: upTime ?? this.upTime,
      ctime: ctime ?? this.ctime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'organizationId': organizationId,
      'batteryTypeId': batteryTypeId,
      'exchangeRuleId': exchangeRuleId,
      'price': price,
      'count': count,
      'shareMoney': shareMoney,
      'exchangeExplain': exchangeExplain,
      'upTime': upTime,
      'ctime': ctime,
    };
  }

  factory FeeExchangeList.fromMap(Map<String, dynamic> map) {
    return FeeExchangeList(
      id: map['id']?.toInt(),
      organizationId: map['organizationId']?.toInt(),
      batteryTypeId: map['batteryTypeId']?.toInt(),
      exchangeRuleId: map['exchangeRuleId']?.toInt(),
      price: map['price']?.toInt(),
      count: map['count']?.toInt(),
      shareMoney: map['shareMoney']?.toInt(),
      exchangeExplain: map['exchangeExplain'],
      upTime: map['upTime']?.toInt(),
      ctime: map['ctime']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory FeeExchangeList.fromJson(String source) =>
      FeeExchangeList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FeeExchangeList(id: $id, organizationId: $organizationId, batteryTypeId: $batteryTypeId, exchangeRuleId: $exchangeRuleId, price: $price, count: $count, shareMoney: $shareMoney, exchangeExplain: $exchangeExplain, upTime: $upTime, ctime: $ctime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FeeExchangeList &&
        other.id == id &&
        other.organizationId == organizationId &&
        other.batteryTypeId == batteryTypeId &&
        other.exchangeRuleId == exchangeRuleId &&
        other.price == price &&
        other.count == count &&
        other.shareMoney == shareMoney &&
        other.exchangeExplain == exchangeExplain &&
        other.upTime == upTime &&
        other.ctime == ctime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        organizationId.hashCode ^
        batteryTypeId.hashCode ^
        exchangeRuleId.hashCode ^
        price.hashCode ^
        count.hashCode ^
        shareMoney.hashCode ^
        exchangeExplain.hashCode ^
        upTime.hashCode ^
        ctime.hashCode;
  }
}
