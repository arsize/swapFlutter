import 'dart:convert';

class Data {
  final int? activityId;
  final String? activityName;
  final String? activityRemark;
  final int? activityType;
  final int? agentId;
  final int? batteryTypeId;
  final int? cardCategory;
  final int? contractPeriod;
  final int? ctime;
  final int? discountMoney;
  final int? id;
  final bool? isDeleted;
  final String? name;
  final int? num;
  final int? organizationId;
  final int? originalPrice;
  final double? price;
  final String? rentInstructions;
  final int? shareMoney;
  final int? showStatus;
  final int? sortRank;
  final int? type;
  final int? utime;
  final int? validTime;
  Data({
    this.activityId,
    this.activityName,
    this.activityRemark,
    this.activityType,
    this.agentId,
    this.batteryTypeId,
    this.cardCategory,
    this.contractPeriod,
    this.ctime,
    this.discountMoney,
    this.id,
    this.isDeleted,
    this.name,
    this.num,
    this.organizationId,
    this.originalPrice,
    this.price,
    this.rentInstructions,
    this.shareMoney,
    this.showStatus,
    this.sortRank,
    this.type,
    this.utime,
    this.validTime,
  });

  Data copyWith({
    int? activityId,
    String? activityName,
    String? activityRemark,
    int? activityType,
    int? agentId,
    int? batteryTypeId,
    int? cardCategory,
    int? contractPeriod,
    int? ctime,
    int? discountMoney,
    int? id,
    bool? isDeleted,
    String? name,
    int? num,
    int? organizationId,
    int? originalPrice,
    double? price,
    String? rentInstructions,
    int? shareMoney,
    int? showStatus,
    int? sortRank,
    int? type,
    int? utime,
    int? validTime,
  }) {
    return Data(
      activityId: activityId ?? this.activityId,
      activityName: activityName ?? this.activityName,
      activityRemark: activityRemark ?? this.activityRemark,
      activityType: activityType ?? this.activityType,
      agentId: agentId ?? this.agentId,
      batteryTypeId: batteryTypeId ?? this.batteryTypeId,
      cardCategory: cardCategory ?? this.cardCategory,
      contractPeriod: contractPeriod ?? this.contractPeriod,
      ctime: ctime ?? this.ctime,
      discountMoney: discountMoney ?? this.discountMoney,
      id: id ?? this.id,
      isDeleted: isDeleted ?? this.isDeleted,
      name: name ?? this.name,
      num: num ?? this.num,
      organizationId: organizationId ?? this.organizationId,
      originalPrice: originalPrice ?? this.originalPrice,
      price: price ?? this.price,
      rentInstructions: rentInstructions ?? this.rentInstructions,
      shareMoney: shareMoney ?? this.shareMoney,
      showStatus: showStatus ?? this.showStatus,
      sortRank: sortRank ?? this.sortRank,
      type: type ?? this.type,
      utime: utime ?? this.utime,
      validTime: validTime ?? this.validTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'activityId': activityId,
      'activityName': activityName,
      'activityRemark': activityRemark,
      'activityType': activityType,
      'agentId': agentId,
      'batteryTypeId': batteryTypeId,
      'cardCategory': cardCategory,
      'contractPeriod': contractPeriod,
      'ctime': ctime,
      'discountMoney': discountMoney,
      'id': id,
      'isDeleted': isDeleted,
      'name': name,
      'num': num,
      'organizationId': organizationId,
      'originalPrice': originalPrice,
      'price': price,
      'rentInstructions': rentInstructions,
      'shareMoney': shareMoney,
      'showStatus': showStatus,
      'sortRank': sortRank,
      'type': type,
      'utime': utime,
      'validTime': validTime,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      activityId: map['activityId']?.toInt(),
      activityName: map['activityName'],
      activityRemark: map['activityRemark'],
      activityType: map['activityType']?.toInt(),
      agentId: map['agentId']?.toInt(),
      batteryTypeId: map['batteryTypeId']?.toInt(),
      cardCategory: map['cardCategory']?.toInt(),
      contractPeriod: map['contractPeriod']?.toInt(),
      ctime: map['ctime'],
      discountMoney: map['discountMoney']?.toInt(),
      id: map['id']?.toInt(),
      isDeleted: map['isDeleted'],
      name: map['name'],
      num: map['num']?.toInt(),
      organizationId: map['organizationId']?.toInt(),
      originalPrice: map['originalPrice']?.toInt(),
      price: map['price']?.toDouble(),
      rentInstructions: map['rentInstructions'],
      shareMoney: map['shareMoney']?.toInt(),
      showStatus: map['showStatus']?.toInt(),
      sortRank: map['sortRank']?.toInt(),
      type: map['type']?.toInt(),
      utime: map['utime'],
      validTime: map['validTime']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(activityId: $activityId, activityName: $activityName, activityRemark: $activityRemark, activityType: $activityType, agentId: $agentId, batteryTypeId: $batteryTypeId, cardCategory: $cardCategory, contractPeriod: $contractPeriod, ctime: $ctime, discountMoney: $discountMoney, id: $id, isDeleted: $isDeleted, name: $name, num: $num, organizationId: $organizationId, originalPrice: $originalPrice, price: $price, rentInstructions: $rentInstructions, shareMoney: $shareMoney, showStatus: $showStatus, sortRank: $sortRank, type: $type, utime: $utime, validTime: $validTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.activityId == activityId &&
        other.activityName == activityName &&
        other.activityRemark == activityRemark &&
        other.activityType == activityType &&
        other.agentId == agentId &&
        other.batteryTypeId == batteryTypeId &&
        other.cardCategory == cardCategory &&
        other.contractPeriod == contractPeriod &&
        other.ctime == ctime &&
        other.discountMoney == discountMoney &&
        other.id == id &&
        other.isDeleted == isDeleted &&
        other.name == name &&
        other.num == num &&
        other.organizationId == organizationId &&
        other.originalPrice == originalPrice &&
        other.price == price &&
        other.rentInstructions == rentInstructions &&
        other.shareMoney == shareMoney &&
        other.showStatus == showStatus &&
        other.sortRank == sortRank &&
        other.type == type &&
        other.utime == utime &&
        other.validTime == validTime;
  }

  @override
  int get hashCode {
    return activityId.hashCode ^
        activityName.hashCode ^
        activityRemark.hashCode ^
        activityType.hashCode ^
        agentId.hashCode ^
        batteryTypeId.hashCode ^
        cardCategory.hashCode ^
        contractPeriod.hashCode ^
        ctime.hashCode ^
        discountMoney.hashCode ^
        id.hashCode ^
        isDeleted.hashCode ^
        name.hashCode ^
        num.hashCode ^
        organizationId.hashCode ^
        originalPrice.hashCode ^
        price.hashCode ^
        rentInstructions.hashCode ^
        shareMoney.hashCode ^
        showStatus.hashCode ^
        sortRank.hashCode ^
        type.hashCode ^
        utime.hashCode ^
        validTime.hashCode;
  }
}
