import 'dart:convert';

import 'data.dart';

class CabinetDetailModel {
  final int? code;
  final Data? data;
  final String? msg;
  CabinetDetailModel({
    this.code,
    this.data,
    this.msg,
  });

  CabinetDetailModel copyWith({
    int? code,
    Data? data,
    String? msg,
  }) {
    return CabinetDetailModel(
      code: code ?? this.code,
      data: data ?? this.data,
      msg: msg ?? this.msg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'data': data?.toMap(),
      'msg': msg,
    };
  }

  factory CabinetDetailModel.fromMap(Map<String, dynamic> map) {
    return CabinetDetailModel(
      code: map['code']?.toInt(),
      data: Data.fromMap(map['data']),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CabinetDetailModel.fromJson(String source) =>
      CabinetDetailModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'CabinetDetailModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CabinetDetailModel &&
        other.code == code &&
        other.data == data &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
