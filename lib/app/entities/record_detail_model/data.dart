import 'dart:convert';

class Data {
  final String? borrowBatterySn;
  final int? borrowBoxSn;
  final String? cabinetDeviceId;
  final String? cabinetDid;
  final String? cabinetName;
  final String? cabinetUid;
  final int? chargePrice;
  final int? chargingType;
  final int? connectType;
  final int? ctime;
  final String? exchangeFailResultDesc;
  final int? exchangeResult;
  final int? exchangeStatus;
  final String? frequencyCardName;
  final int? frequencyCardType;
  final int? money;
  final bool? oftenUseDevice;
  final String? orderNo;
  final int? powerBeanNum;
  final String? returnBatterySn;
  final int? returnBatterySoc;
  final int? returnBoxSn;
  final int? singleChargePrice;
  final int? surplusNum;
  final int? userFrequencyPayType;
  Data({
    this.borrowBatterySn,
    this.borrowBoxSn,
    this.cabinetDeviceId,
    this.cabinetDid,
    this.cabinetName,
    this.cabinetUid,
    this.chargePrice,
    this.chargingType,
    this.connectType,
    this.ctime,
    this.exchangeFailResultDesc,
    this.exchangeResult,
    this.exchangeStatus,
    this.frequencyCardName,
    this.frequencyCardType,
    this.money,
    this.oftenUseDevice,
    this.orderNo,
    this.powerBeanNum,
    this.returnBatterySn,
    this.returnBatterySoc,
    this.returnBoxSn,
    this.singleChargePrice,
    this.surplusNum,
    this.userFrequencyPayType,
  });

  Data copyWith({
    String? borrowBatterySn,
    int? borrowBoxSn,
    String? cabinetDeviceId,
    String? cabinetDid,
    String? cabinetName,
    String? cabinetUid,
    int? chargePrice,
    int? chargingType,
    int? connectType,
    int? ctime,
    String? exchangeFailResultDesc,
    int? exchangeResult,
    int? exchangeStatus,
    String? frequencyCardName,
    int? frequencyCardType,
    int? money,
    bool? oftenUseDevice,
    String? orderNo,
    int? powerBeanNum,
    String? returnBatterySn,
    int? returnBatterySoc,
    int? returnBoxSn,
    int? singleChargePrice,
    int? surplusNum,
    int? userFrequencyPayType,
  }) {
    return Data(
      borrowBatterySn: borrowBatterySn ?? this.borrowBatterySn,
      borrowBoxSn: borrowBoxSn ?? this.borrowBoxSn,
      cabinetDeviceId: cabinetDeviceId ?? this.cabinetDeviceId,
      cabinetDid: cabinetDid ?? this.cabinetDid,
      cabinetName: cabinetName ?? this.cabinetName,
      cabinetUid: cabinetUid ?? this.cabinetUid,
      chargePrice: chargePrice ?? this.chargePrice,
      chargingType: chargingType ?? this.chargingType,
      connectType: connectType ?? this.connectType,
      ctime: ctime ?? this.ctime,
      exchangeFailResultDesc:
          exchangeFailResultDesc ?? this.exchangeFailResultDesc,
      exchangeResult: exchangeResult ?? this.exchangeResult,
      exchangeStatus: exchangeStatus ?? this.exchangeStatus,
      frequencyCardName: frequencyCardName ?? this.frequencyCardName,
      frequencyCardType: frequencyCardType ?? this.frequencyCardType,
      money: money ?? this.money,
      oftenUseDevice: oftenUseDevice ?? this.oftenUseDevice,
      orderNo: orderNo ?? this.orderNo,
      powerBeanNum: powerBeanNum ?? this.powerBeanNum,
      returnBatterySn: returnBatterySn ?? this.returnBatterySn,
      returnBatterySoc: returnBatterySoc ?? this.returnBatterySoc,
      returnBoxSn: returnBoxSn ?? this.returnBoxSn,
      singleChargePrice: singleChargePrice ?? this.singleChargePrice,
      surplusNum: surplusNum ?? this.surplusNum,
      userFrequencyPayType: userFrequencyPayType ?? this.userFrequencyPayType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'borrowBatterySn': borrowBatterySn,
      'borrowBoxSn': borrowBoxSn,
      'cabinetDeviceId': cabinetDeviceId,
      'cabinetDid': cabinetDid,
      'cabinetName': cabinetName,
      'cabinetUid': cabinetUid,
      'chargePrice': chargePrice,
      'chargingType': chargingType,
      'connectType': connectType,
      'ctime': ctime,
      'exchangeFailResultDesc': exchangeFailResultDesc,
      'exchangeResult': exchangeResult,
      'exchangeStatus': exchangeStatus,
      'frequencyCardName': frequencyCardName,
      'frequencyCardType': frequencyCardType,
      'money': money,
      'oftenUseDevice': oftenUseDevice,
      'orderNo': orderNo,
      'powerBeanNum': powerBeanNum,
      'returnBatterySn': returnBatterySn,
      'returnBatterySoc': returnBatterySoc,
      'returnBoxSn': returnBoxSn,
      'singleChargePrice': singleChargePrice,
      'surplusNum': surplusNum,
      'userFrequencyPayType': userFrequencyPayType,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      borrowBatterySn: map['borrowBatterySn'],
      borrowBoxSn: map['borrowBoxSn']?.toInt(),
      cabinetDeviceId: map['cabinetDeviceId'],
      cabinetDid: map['cabinetDid'],
      cabinetName: map['cabinetName'],
      cabinetUid: map['cabinetUid'],
      chargePrice: map['chargePrice']?.toInt(),
      chargingType: map['chargingType']?.toInt(),
      connectType: map['connectType']?.toInt(),
      ctime: map['ctime']?.toInt(),
      exchangeFailResultDesc: map['exchangeFailResultDesc'],
      exchangeResult: map['exchangeResult']?.toInt(),
      exchangeStatus: map['exchangeStatus']?.toInt(),
      frequencyCardName: map['frequencyCardName'],
      frequencyCardType: map['frequencyCardType']?.toInt(),
      money: map['money']?.toInt(),
      oftenUseDevice: map['oftenUseDevice'],
      orderNo: map['orderNo'],
      powerBeanNum: map['powerBeanNum']?.toInt(),
      returnBatterySn: map['returnBatterySn'],
      returnBatterySoc: map['returnBatterySoc']?.toInt(),
      returnBoxSn: map['returnBoxSn']?.toInt(),
      singleChargePrice: map['singleChargePrice']?.toInt(),
      surplusNum: map['surplusNum']?.toInt(),
      userFrequencyPayType: map['userFrequencyPayType']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(borrowBatterySn: $borrowBatterySn, borrowBoxSn: $borrowBoxSn, cabinetDeviceId: $cabinetDeviceId, cabinetDid: $cabinetDid, cabinetName: $cabinetName, cabinetUid: $cabinetUid, chargePrice: $chargePrice, chargingType: $chargingType, connectType: $connectType, ctime: $ctime, exchangeFailResultDesc: $exchangeFailResultDesc, exchangeResult: $exchangeResult, exchangeStatus: $exchangeStatus, frequencyCardName: $frequencyCardName, frequencyCardType: $frequencyCardType, money: $money, oftenUseDevice: $oftenUseDevice, orderNo: $orderNo, powerBeanNum: $powerBeanNum, returnBatterySn: $returnBatterySn, returnBatterySoc: $returnBatterySoc, returnBoxSn: $returnBoxSn, singleChargePrice: $singleChargePrice, surplusNum: $surplusNum, userFrequencyPayType: $userFrequencyPayType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.borrowBatterySn == borrowBatterySn &&
        other.borrowBoxSn == borrowBoxSn &&
        other.cabinetDeviceId == cabinetDeviceId &&
        other.cabinetDid == cabinetDid &&
        other.cabinetName == cabinetName &&
        other.cabinetUid == cabinetUid &&
        other.chargePrice == chargePrice &&
        other.chargingType == chargingType &&
        other.connectType == connectType &&
        other.ctime == ctime &&
        other.exchangeFailResultDesc == exchangeFailResultDesc &&
        other.exchangeResult == exchangeResult &&
        other.exchangeStatus == exchangeStatus &&
        other.frequencyCardName == frequencyCardName &&
        other.frequencyCardType == frequencyCardType &&
        other.money == money &&
        other.oftenUseDevice == oftenUseDevice &&
        other.orderNo == orderNo &&
        other.powerBeanNum == powerBeanNum &&
        other.returnBatterySn == returnBatterySn &&
        other.returnBatterySoc == returnBatterySoc &&
        other.returnBoxSn == returnBoxSn &&
        other.singleChargePrice == singleChargePrice &&
        other.surplusNum == surplusNum &&
        other.userFrequencyPayType == userFrequencyPayType;
  }

  @override
  int get hashCode {
    return borrowBatterySn.hashCode ^
        borrowBoxSn.hashCode ^
        cabinetDeviceId.hashCode ^
        cabinetDid.hashCode ^
        cabinetName.hashCode ^
        cabinetUid.hashCode ^
        chargePrice.hashCode ^
        chargingType.hashCode ^
        connectType.hashCode ^
        ctime.hashCode ^
        exchangeFailResultDesc.hashCode ^
        exchangeResult.hashCode ^
        exchangeStatus.hashCode ^
        frequencyCardName.hashCode ^
        frequencyCardType.hashCode ^
        money.hashCode ^
        oftenUseDevice.hashCode ^
        orderNo.hashCode ^
        powerBeanNum.hashCode ^
        returnBatterySn.hashCode ^
        returnBatterySoc.hashCode ^
        returnBoxSn.hashCode ^
        singleChargePrice.hashCode ^
        surplusNum.hashCode ^
        userFrequencyPayType.hashCode;
  }
}
