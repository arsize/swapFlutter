import 'dart:convert';

import 'data.dart';

class ExchangeFee {
  final Data? data;
  final int? code;
  final String? msg;
  ExchangeFee({
    this.data,
    this.code,
    this.msg,
  });

  ExchangeFee copyWith({
    Data? data,
    int? code,
    String? msg,
  }) {
    return ExchangeFee(
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

  factory ExchangeFee.fromMap(Map<String, dynamic> map) {
    return ExchangeFee(
      data: Data.fromMap(map['data']),
      code: map['code']?.toInt(),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ExchangeFee.fromJson(String source) =>
      ExchangeFee.fromMap(json.decode(source));

  @override
  String toString() => 'ExchangeFee(data: $data, code: $code, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExchangeFee &&
        other.data == data &&
        other.code == code &&
        other.msg == msg;
  }

  @override
  int get hashCode => data.hashCode ^ code.hashCode ^ msg.hashCode;
}
