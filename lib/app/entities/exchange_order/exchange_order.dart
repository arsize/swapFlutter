import 'dart:convert';

import 'data.dart';

class ExchangeOrder {
  final Data? data;
  final int? code;
  final String? msg;
  ExchangeOrder({
    this.data,
    this.code,
    this.msg,
  });

  ExchangeOrder copyWith({
    Data? data,
    int? code,
    String? msg,
  }) {
    return ExchangeOrder(
      data: data ?? this.data,
      code: code ?? this.code,
      msg: msg ?? this.msg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data?.toMap(),
      'code': code,
      'msg': msg,
    };
  }

  factory ExchangeOrder.fromMap(Map<String, dynamic> map) {
    return ExchangeOrder(
      data: Data.fromMap(map['data']),
      code: map['code']?.toInt(),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ExchangeOrder.fromJson(String source) =>
      ExchangeOrder.fromMap(json.decode(source));

  @override
  String toString() => 'ExchangeOrder(data: $data, code: $code, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExchangeOrder &&
        other.data == data &&
        other.code == code &&
        other.msg == msg;
  }

  @override
  int get hashCode => data.hashCode ^ code.hashCode ^ msg.hashCode;
}
