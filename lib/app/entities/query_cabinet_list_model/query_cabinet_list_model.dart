import 'dart:convert';

import 'data.dart';

class QueryCabinetListModel {
  final int? code;
  final Data? data;
  final String? msg;
  QueryCabinetListModel({
    this.code,
    this.data,
    this.msg,
  });

  QueryCabinetListModel copyWith({
    int? code,
    Data? data,
    String? msg,
  }) {
    return QueryCabinetListModel(
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

  factory QueryCabinetListModel.fromMap(Map<String, dynamic> map) {
    return QueryCabinetListModel(
      code: map['code']?.toInt(),
      data: Data.fromMap(map['data']),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory QueryCabinetListModel.fromJson(String source) =>
      QueryCabinetListModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'QueryCabinetListModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QueryCabinetListModel &&
        other.code == code &&
        other.data == data &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
