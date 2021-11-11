import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'shop_business_list.dart';

class Data {
  final String? cityCode;
  final String? cityName;
  final List<ShopBusinessList>? shopBusinessList;
  Data({
    this.cityCode,
    this.cityName,
    this.shopBusinessList,
  });

  Data copyWith({
    String? cityCode,
    String? cityName,
    List<ShopBusinessList>? shopBusinessList,
  }) {
    return Data(
      cityCode: cityCode ?? this.cityCode,
      cityName: cityName ?? this.cityName,
      shopBusinessList: shopBusinessList ?? this.shopBusinessList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cityCode': cityCode,
      'cityName': cityName,
      'shopBusinessList': shopBusinessList?.map((x) => x.toMap()).toList(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      cityCode: map['cityCode'],
      cityName: map['cityName'],
      shopBusinessList: List<ShopBusinessList>.from(
          (map['shopBusinessList'] ?? [])
              .map((x) => ShopBusinessList.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() =>
      'Data(cityCode: $cityCode, cityName: $cityName, shopBusinessList: $shopBusinessList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.cityCode == cityCode &&
        other.cityName == cityName &&
        listEquals(other.shopBusinessList, shopBusinessList);
  }

  @override
  int get hashCode =>
      cityCode.hashCode ^ cityName.hashCode ^ shopBusinessList.hashCode;
}
