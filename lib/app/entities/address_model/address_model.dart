import 'dart:convert';

import 'data.dart';

class AddressModel {
  final int? code;
  final Data? data;
  final String? msg;
  AddressModel({
    this.code,
    this.data,
    this.msg,
  });

  AddressModel copyWith({
    int? code,
    Data? data,
    String? msg,
  }) {
    return AddressModel(
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

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      code: map['code']?.toInt(),
      data: Data.fromMap(map['data']),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));

  @override
  String toString() => 'AddressModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddressModel &&
        other.code == code &&
        other.data == data &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
