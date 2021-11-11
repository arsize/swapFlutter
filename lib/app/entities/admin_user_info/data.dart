import 'dart:convert';

class Data {
  final String? batterySn;
  final String? typeName;
  final String? regionName;
  final int? bindTime;
  final String? account;
  final String? userNickname;
  final String? accountUid;
  final int? bindType;
  Data({
    this.batterySn,
    this.typeName,
    this.regionName,
    this.bindTime,
    this.account,
    this.userNickname,
    this.accountUid,
    this.bindType,
  });

  Data copyWith({
    String? batterySn,
    String? typeName,
    String? regionName,
    int? bindTime,
    String? account,
    String? userNickname,
    String? accountUid,
    int? bindType,
  }) {
    return Data(
      batterySn: batterySn ?? this.batterySn,
      typeName: typeName ?? this.typeName,
      regionName: regionName ?? this.regionName,
      bindTime: bindTime ?? this.bindTime,
      account: account ?? this.account,
      userNickname: userNickname ?? this.userNickname,
      accountUid: accountUid ?? this.accountUid,
      bindType: bindType ?? this.bindType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'batterySn': batterySn,
      'typeName': typeName,
      'regionName': regionName,
      'bindTime': bindTime,
      'account': account,
      'userNickname': userNickname,
      'accountUid': accountUid,
      'bindType': bindType,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      batterySn: map['batterySn'],
      typeName: map['typeName'],
      regionName: map['regionName'],
      bindTime: map['bindTime']?.toInt(),
      account: map['account'],
      userNickname: map['userNickname'],
      accountUid: map['accountUid'],
      bindType: map['bindType']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(batterySn: $batterySn, typeName: $typeName, regionName: $regionName, bindTime: $bindTime, account: $account, userNickname: $userNickname, accountUid: $accountUid, bindType: $bindType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.batterySn == batterySn &&
        other.typeName == typeName &&
        other.regionName == regionName &&
        other.bindTime == bindTime &&
        other.account == account &&
        other.userNickname == userNickname &&
        other.accountUid == accountUid &&
        other.bindType == bindType;
  }

  @override
  int get hashCode {
    return batterySn.hashCode ^
        typeName.hashCode ^
        regionName.hashCode ^
        bindTime.hashCode ^
        account.hashCode ^
        userNickname.hashCode ^
        accountUid.hashCode ^
        bindType.hashCode;
  }
}
