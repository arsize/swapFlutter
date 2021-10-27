import 'dart:convert';

class UserFrequencyCardRecord {
  final int? accountId;
  final String? accountUid;
  final int? activityId;
  final int? additionalMoneyDiscountAmount;
  final int? batteryTypeId;
  final int? buyType;
  final bool? canUpgraded;
  final int? couponDiscountAmount;
  final int? frequencyCardCategory;
  final int? frequencyCardContractPeriod;
  final int? frequencyCardId;
  final String? frequencyCardName;
  final int? frequencyCardNum;
  final int? frequencyCardPrice;
  final int? frequencyCardType;
  final int? id;
  final int? loseEffectTime;
  final int? numberOfFulfilledContracts;
  final int? oldFrequencyCardId;
  final String? orderNumber;
  final int? organizationId;
  final int? payType;
  final int? status;
  final int? surplusNum;
  final int? takeEffectTime;
  UserFrequencyCardRecord({
    this.accountId,
    this.accountUid,
    this.activityId,
    this.additionalMoneyDiscountAmount,
    this.batteryTypeId,
    this.buyType,
    this.canUpgraded,
    this.couponDiscountAmount,
    this.frequencyCardCategory,
    this.frequencyCardContractPeriod,
    this.frequencyCardId,
    this.frequencyCardName,
    this.frequencyCardNum,
    this.frequencyCardPrice,
    this.frequencyCardType,
    this.id,
    this.loseEffectTime,
    this.numberOfFulfilledContracts,
    this.oldFrequencyCardId,
    this.orderNumber,
    this.organizationId,
    this.payType,
    this.status,
    this.surplusNum,
    this.takeEffectTime,
  });

  UserFrequencyCardRecord copyWith({
    int? accountId,
    String? accountUid,
    int? activityId,
    int? additionalMoneyDiscountAmount,
    int? batteryTypeId,
    int? buyType,
    bool? canUpgraded,
    int? couponDiscountAmount,
    int? frequencyCardCategory,
    int? frequencyCardContractPeriod,
    int? frequencyCardId,
    String? frequencyCardName,
    int? frequencyCardNum,
    int? frequencyCardPrice,
    int? frequencyCardType,
    int? id,
    int? loseEffectTime,
    int? numberOfFulfilledContracts,
    int? oldFrequencyCardId,
    String? orderNumber,
    int? organizationId,
    int? payType,
    int? status,
    int? surplusNum,
    int? takeEffectTime,
  }) {
    return UserFrequencyCardRecord(
      accountId: accountId ?? this.accountId,
      accountUid: accountUid ?? this.accountUid,
      activityId: activityId ?? this.activityId,
      additionalMoneyDiscountAmount:
          additionalMoneyDiscountAmount ?? this.additionalMoneyDiscountAmount,
      batteryTypeId: batteryTypeId ?? this.batteryTypeId,
      buyType: buyType ?? this.buyType,
      canUpgraded: canUpgraded ?? this.canUpgraded,
      couponDiscountAmount: couponDiscountAmount ?? this.couponDiscountAmount,
      frequencyCardCategory:
          frequencyCardCategory ?? this.frequencyCardCategory,
      frequencyCardContractPeriod:
          frequencyCardContractPeriod ?? this.frequencyCardContractPeriod,
      frequencyCardId: frequencyCardId ?? this.frequencyCardId,
      frequencyCardName: frequencyCardName ?? this.frequencyCardName,
      frequencyCardNum: frequencyCardNum ?? this.frequencyCardNum,
      frequencyCardPrice: frequencyCardPrice ?? this.frequencyCardPrice,
      frequencyCardType: frequencyCardType ?? this.frequencyCardType,
      id: id ?? this.id,
      loseEffectTime: loseEffectTime ?? this.loseEffectTime,
      numberOfFulfilledContracts:
          numberOfFulfilledContracts ?? this.numberOfFulfilledContracts,
      oldFrequencyCardId: oldFrequencyCardId ?? this.oldFrequencyCardId,
      orderNumber: orderNumber ?? this.orderNumber,
      organizationId: organizationId ?? this.organizationId,
      payType: payType ?? this.payType,
      status: status ?? this.status,
      surplusNum: surplusNum ?? this.surplusNum,
      takeEffectTime: takeEffectTime ?? this.takeEffectTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accountId': accountId,
      'accountUid': accountUid,
      'activityId': activityId,
      'additionalMoneyDiscountAmount': additionalMoneyDiscountAmount,
      'batteryTypeId': batteryTypeId,
      'buyType': buyType,
      'canUpgraded': canUpgraded,
      'couponDiscountAmount': couponDiscountAmount,
      'frequencyCardCategory': frequencyCardCategory,
      'frequencyCardContractPeriod': frequencyCardContractPeriod,
      'frequencyCardId': frequencyCardId,
      'frequencyCardName': frequencyCardName,
      'frequencyCardNum': frequencyCardNum,
      'frequencyCardPrice': frequencyCardPrice,
      'frequencyCardType': frequencyCardType,
      'id': id,
      'loseEffectTime': loseEffectTime,
      'numberOfFulfilledContracts': numberOfFulfilledContracts,
      'oldFrequencyCardId': oldFrequencyCardId,
      'orderNumber': orderNumber,
      'organizationId': organizationId,
      'payType': payType,
      'status': status,
      'surplusNum': surplusNum,
      'takeEffectTime': takeEffectTime,
    };
  }

  factory UserFrequencyCardRecord.fromMap(Map<String, dynamic> map) {
    return UserFrequencyCardRecord(
      accountId: map['accountId']?.toInt(),
      accountUid: map['accountUid'],
      activityId: map['activityId']?.toInt(),
      additionalMoneyDiscountAmount:
          map['additionalMoneyDiscountAmount']?.toInt(),
      batteryTypeId: map['batteryTypeId']?.toInt(),
      buyType: map['buyType']?.toInt(),
      canUpgraded: map['canUpgraded'],
      couponDiscountAmount: map['couponDiscountAmount']?.toInt(),
      frequencyCardCategory: map['frequencyCardCategory']?.toInt(),
      frequencyCardContractPeriod: map['frequencyCardContractPeriod']?.toInt(),
      frequencyCardId: map['frequencyCardId']?.toInt(),
      frequencyCardName: map['frequencyCardName'],
      frequencyCardNum: map['frequencyCardNum']?.toInt(),
      frequencyCardPrice: map['frequencyCardPrice']?.toInt(),
      frequencyCardType: map['frequencyCardType']?.toInt(),
      id: map['id']?.toInt(),
      loseEffectTime: map['loseEffectTime'],
      numberOfFulfilledContracts: map['numberOfFulfilledContracts']?.toInt(),
      oldFrequencyCardId: map['oldFrequencyCardId']?.toInt(),
      orderNumber: map['orderNumber'],
      organizationId: map['organizationId']?.toInt(),
      payType: map['payType']?.toInt(),
      status: map['status']?.toInt(),
      surplusNum: map['surplusNum']?.toInt(),
      takeEffectTime: map['takeEffectTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserFrequencyCardRecord.fromJson(String source) =>
      UserFrequencyCardRecord.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserFrequencyCardRecord(accountId: $accountId, accountUid: $accountUid, activityId: $activityId, additionalMoneyDiscountAmount: $additionalMoneyDiscountAmount, batteryTypeId: $batteryTypeId, buyType: $buyType, canUpgraded: $canUpgraded, couponDiscountAmount: $couponDiscountAmount, frequencyCardCategory: $frequencyCardCategory, frequencyCardContractPeriod: $frequencyCardContractPeriod, frequencyCardId: $frequencyCardId, frequencyCardName: $frequencyCardName, frequencyCardNum: $frequencyCardNum, frequencyCardPrice: $frequencyCardPrice, frequencyCardType: $frequencyCardType, id: $id, loseEffectTime: $loseEffectTime, numberOfFulfilledContracts: $numberOfFulfilledContracts, oldFrequencyCardId: $oldFrequencyCardId, orderNumber: $orderNumber, organizationId: $organizationId, payType: $payType, status: $status, surplusNum: $surplusNum, takeEffectTime: $takeEffectTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserFrequencyCardRecord &&
        other.accountId == accountId &&
        other.accountUid == accountUid &&
        other.activityId == activityId &&
        other.additionalMoneyDiscountAmount == additionalMoneyDiscountAmount &&
        other.batteryTypeId == batteryTypeId &&
        other.buyType == buyType &&
        other.canUpgraded == canUpgraded &&
        other.couponDiscountAmount == couponDiscountAmount &&
        other.frequencyCardCategory == frequencyCardCategory &&
        other.frequencyCardContractPeriod == frequencyCardContractPeriod &&
        other.frequencyCardId == frequencyCardId &&
        other.frequencyCardName == frequencyCardName &&
        other.frequencyCardNum == frequencyCardNum &&
        other.frequencyCardPrice == frequencyCardPrice &&
        other.frequencyCardType == frequencyCardType &&
        other.id == id &&
        other.loseEffectTime == loseEffectTime &&
        other.numberOfFulfilledContracts == numberOfFulfilledContracts &&
        other.oldFrequencyCardId == oldFrequencyCardId &&
        other.orderNumber == orderNumber &&
        other.organizationId == organizationId &&
        other.payType == payType &&
        other.status == status &&
        other.surplusNum == surplusNum &&
        other.takeEffectTime == takeEffectTime;
  }

  @override
  int get hashCode {
    return accountId.hashCode ^
        accountUid.hashCode ^
        activityId.hashCode ^
        additionalMoneyDiscountAmount.hashCode ^
        batteryTypeId.hashCode ^
        buyType.hashCode ^
        canUpgraded.hashCode ^
        couponDiscountAmount.hashCode ^
        frequencyCardCategory.hashCode ^
        frequencyCardContractPeriod.hashCode ^
        frequencyCardId.hashCode ^
        frequencyCardName.hashCode ^
        frequencyCardNum.hashCode ^
        frequencyCardPrice.hashCode ^
        frequencyCardType.hashCode ^
        id.hashCode ^
        loseEffectTime.hashCode ^
        numberOfFulfilledContracts.hashCode ^
        oldFrequencyCardId.hashCode ^
        orderNumber.hashCode ^
        organizationId.hashCode ^
        payType.hashCode ^
        status.hashCode ^
        surplusNum.hashCode ^
        takeEffectTime.hashCode;
  }
}
