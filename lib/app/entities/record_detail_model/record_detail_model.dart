import 'dart:convert';

import 'data.dart';

class RecordDetailModel {
  final int? code;
  final Data? data;
  final String? msg;
  RecordDetailModel({
    this.code,
    this.data,
    this.msg,
  });

  RecordDetailModel copyWith({
    int? code,
    Data? data,
    String? msg,
  }) {
    return RecordDetailModel(
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

  factory RecordDetailModel.fromMap(Map<String, dynamic> map) {
    return RecordDetailModel(
      code: map['code']?.toInt(),
      data: Data.fromMap(map['data']),
      msg: map['msg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RecordDetailModel.fromJson(String source) =>
      RecordDetailModel.fromMap(json.decode(source));

  @override
  String toString() => 'RecordDetailModel(code: $code, data: $data, msg: $msg)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RecordDetailModel &&
        other.code == code &&
        other.data == data &&
        other.msg == msg;
  }

  @override
  int get hashCode => code.hashCode ^ data.hashCode ^ msg.hashCode;
}
