import 'dart:convert';

class Record {
  final String accountUid;
  final String consignee;
  final String consigneePhone;
  final int ctime;
  final bool defaultAddress;
  final String detailedAddress;
  final int id;
  final String takeRegion;
  Record({
    required this.accountUid,
    required this.consignee,
    required this.consigneePhone,
    required this.ctime,
    required this.defaultAddress,
    required this.detailedAddress,
    required this.id,
    required this.takeRegion,
  });

  Record copyWith({
    String? accountUid,
    String? consignee,
    String? consigneePhone,
    int? ctime,
    bool? defaultAddress,
    String? detailedAddress,
    int? id,
    String? takeRegion,
  }) {
    return Record(
      accountUid: accountUid ?? this.accountUid,
      consignee: consignee ?? this.consignee,
      consigneePhone: consigneePhone ?? this.consigneePhone,
      ctime: ctime ?? this.ctime,
      defaultAddress: defaultAddress ?? this.defaultAddress,
      detailedAddress: detailedAddress ?? this.detailedAddress,
      id: id ?? this.id,
      takeRegion: takeRegion ?? this.takeRegion,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accountUid': accountUid,
      'consignee': consignee,
      'consigneePhone': consigneePhone,
      'ctime': ctime,
      'defaultAddress': defaultAddress,
      'detailedAddress': detailedAddress,
      'id': id,
      'takeRegion': takeRegion,
    };
  }

  factory Record.fromMap(Map<String, dynamic> map) {
    return Record(
      accountUid: map['accountUid'],
      consignee: map['consignee'],
      consigneePhone: map['consigneePhone'],
      ctime: map['ctime'],
      defaultAddress: map['defaultAddress'],
      detailedAddress: map['detailedAddress'],
      id: map['id']?.toInt(),
      takeRegion: map['takeRegion'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Record.fromJson(String source) => Record.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Record(accountUid: $accountUid, consignee: $consignee, consigneePhone: $consigneePhone, ctime: $ctime, defaultAddress: $defaultAddress, detailedAddress: $detailedAddress, id: $id, takeRegion: $takeRegion)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Record &&
        other.accountUid == accountUid &&
        other.consignee == consignee &&
        other.consigneePhone == consigneePhone &&
        other.ctime == ctime &&
        other.defaultAddress == defaultAddress &&
        other.detailedAddress == detailedAddress &&
        other.id == id &&
        other.takeRegion == takeRegion;
  }

  @override
  int get hashCode {
    return accountUid.hashCode ^
        consignee.hashCode ^
        consigneePhone.hashCode ^
        ctime.hashCode ^
        defaultAddress.hashCode ^
        detailedAddress.hashCode ^
        id.hashCode ^
        takeRegion.hashCode;
  }
}
