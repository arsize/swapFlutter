import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'cabinet_list.dart';

class Data {
  final List<CabinetList> cabinetList;
  Data({
    required this.cabinetList,
  });

  Data copyWith({
    List<CabinetList>? cabinetList,
  }) {
    return Data(
      cabinetList: cabinetList ?? this.cabinetList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cabinetList': cabinetList.map((x) => x.toMap()).toList(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      cabinetList: List<CabinetList>.from(
          map['cabinetList']?.map((x) => CabinetList.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() => 'Data(cabinetList: $cabinetList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data && listEquals(other.cabinetList, cabinetList);
  }

  @override
  int get hashCode => cabinetList.hashCode;
}
