import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'data.dart';

class ServiceAgentModel {
  final int? code;
  final List<Data>? data;
  final String? msg;
  ServiceAgentModel({
    this.code,
    this.data,
    this.msg,
  });

  ServiceAgentModel copyWith({
    int? code,
    List<Data>? data,
    String? msg,
  }) {
    return ServiceAgentModel(
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

  factory ServiceAgentModel.fromMap(Map<String, dynamic> map) {
    return ServiceAgentModel(
      code: map['code']?.toInt(),
      data: List<Data>.from((map['data'] ?? []).map((x) => Data.fromMap(x))),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ServiceAgentModel.fromJson(String source) =>
      ServiceAgentModel.fromMap(json.decode(source));

  @override
  String toString() => 'ServiceAgentModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ServiceAgentModel &&
        other.code == code &&
        listEquals(other.data, data) &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
