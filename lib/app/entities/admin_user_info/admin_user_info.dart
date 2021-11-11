import 'dart:convert';

import 'data.dart';

class AdminUserInfo {
  final Data? data;
  final int? code;
  final String? msg;
  AdminUserInfo({
    this.data,
    this.code,
    this.msg,
  });

  AdminUserInfo copyWith({
    Data? data,
    int? code,
    String? msg,
  }) {
    return AdminUserInfo(
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

  factory AdminUserInfo.fromMap(Map<String, dynamic> map) {
    return AdminUserInfo(
      data: Data.fromMap(map['data']),
      code: map['code']?.toInt(),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AdminUserInfo.fromJson(String source) =>
      AdminUserInfo.fromMap(json.decode(source));

  @override
  String toString() => 'AdminUserInfo(data: $data, code: $code, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AdminUserInfo &&
        other.data == data &&
        other.code == code &&
        other.msg == msg;
  }

  @override
  int get hashCode => data.hashCode ^ code.hashCode ^ msg.hashCode;
}
