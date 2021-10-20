import 'dart:convert';

import 'data.dart';

class UserModel {
  final int? code;
  final Data? data;
  final String? msg;
  UserModel({
    this.code,
    this.data,
    this.msg,
  });

  UserModel copyWith({
    int? code,
    Data? data,
    String? msg,
  }) {
    return UserModel(
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

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      code: map['code']?.toInt(),
      data: Data.fromMap(map['data']),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.code == code &&
        other.data == data &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
