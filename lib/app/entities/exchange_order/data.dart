import 'dart:convert';

class Data {
  final int? actionType;
  final String? orderNo;
  final String? validTime;
  final String? returnBarSn;
  Data({
    this.actionType,
    this.orderNo,
    this.validTime,
    this.returnBarSn,
  });

  Data copyWith({
    int? actionType,
    String? orderNo,
    String? validTime,
    String? returnBarSn,
  }) {
    return Data(
      actionType: actionType ?? this.actionType,
      orderNo: orderNo ?? this.orderNo,
      validTime: validTime ?? this.validTime,
      returnBarSn: returnBarSn ?? this.returnBarSn,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'actionType': actionType,
      'orderNo': orderNo,
      'validTime': validTime,
      'returnBarSn': returnBarSn,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      actionType: map['actionType']?.toInt(),
      orderNo: map['orderNo'],
      validTime: map['validTime'],
      returnBarSn: map['returnBarSn'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(actionType: $actionType, orderNo: $orderNo, validTime: $validTime, returnBarSn: $returnBarSn)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.actionType == actionType &&
        other.orderNo == orderNo &&
        other.validTime == validTime &&
        other.returnBarSn == returnBarSn;
  }

  @override
  int get hashCode {
    return actionType.hashCode ^
        orderNo.hashCode ^
        validTime.hashCode ^
        returnBarSn.hashCode;
  }
}
