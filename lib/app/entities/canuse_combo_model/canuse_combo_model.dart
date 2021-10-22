import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'data.dart';

class CanUseComboModel {
  final int? code;
  final List<Data>? data;
  final String? msg;
  CanUseComboModel({
    this.code,
    this.data,
    this.msg,
  });

  CanUseComboModel copyWith({
    int? code,
    List<Data>? data,
    String? msg,
  }) {
    return CanUseComboModel(
      code: code ?? this.code,
      data: data ?? this.data,
      msg: msg ?? this.msg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'data': data?.map((x) => x.toMap()).toList(),
      'msg': msg,
    };
  }

  factory CanUseComboModel.fromMap(Map<String, dynamic> map) {
    return CanUseComboModel(
      code: map['code']?.toInt(),
      data: List<Data>.from((map['data'] ?? [])?.map((x) => Data.fromMap(x))),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CanUseComboModel.fromJson(String source) =>
      CanUseComboModel.fromMap(json.decode(source));

  @override
  String toString() => 'CanUseComboModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CanUseComboModel &&
        other.code == code &&
        listEquals(other.data, data) &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
