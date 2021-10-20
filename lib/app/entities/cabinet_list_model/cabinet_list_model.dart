import 'dart:convert';

import 'data.dart';

class CabinetListModel {
  final int? code;
  final Data? data;
  final String? msg;
  CabinetListModel({
    this.code,
    this.data,
    this.msg,
  });

  CabinetListModel copyWith({
    int? code,
    Data? data,
    String? msg,
  }) {
    return CabinetListModel(
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

  factory CabinetListModel.fromMap(Map<String, dynamic> map) {
    return CabinetListModel(
      code: map['code']?.toInt(),
      data: Data.fromMap(map['data']),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CabinetListModel.fromJson(String source) =>
      CabinetListModel.fromMap(json.decode(source));

  @override
  String toString() => 'CabinetListModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CabinetListModel &&
        other.code == code &&
        other.data == data &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
