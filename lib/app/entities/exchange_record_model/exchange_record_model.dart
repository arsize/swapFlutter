import 'dart:convert';

import 'data.dart';

class ExchangeRecordModel {
  final int? code;
  final Data? data;
  final String? msg;
  ExchangeRecordModel({
    this.code,
    this.data,
    this.msg,
  });

  ExchangeRecordModel copyWith({
    int? code,
    Data? data,
    String? msg,
  }) {
    return ExchangeRecordModel(
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

  factory ExchangeRecordModel.fromMap(Map<String, dynamic> map) {
    return ExchangeRecordModel(
      code: map['code']?.toInt(),
      data: Data.fromMap(map['data']),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ExchangeRecordModel.fromJson(String source) =>
      ExchangeRecordModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ExchangeRecordModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExchangeRecordModel &&
        other.code == code &&
        other.data == data &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
