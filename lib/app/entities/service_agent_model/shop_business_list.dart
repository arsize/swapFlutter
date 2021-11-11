import 'dart:convert';

class ShopBusinessList {
  final int? agentId;
  final String? busAddress;
  final String? busContactName;
  final String? busMobile;
  final String? busName;
  final int? busStatus;
  final String? businessPicUrl;
  final int? cardShowType;
  final String? cityCode;
  final String? cityName;
  final int? ctime;
  final int? delFlag;
  final int? dis;
  final int? id;
  final int? isServeVehicle;
  final int? isServerBattery;
  final int? isServerSale;
  final int? isSupportRentalService;
  final int? latitude;
  final int? longitude;
  final int? organizationId;
  final int? sellProfit;
  final String? serviceTime;
  final int? uptime;
  ShopBusinessList({
    this.agentId,
    this.busAddress,
    this.busContactName,
    this.busMobile,
    this.busName,
    this.busStatus,
    this.businessPicUrl,
    this.cardShowType,
    this.cityCode,
    this.cityName,
    this.ctime,
    this.delFlag,
    this.dis,
    this.id,
    this.isServeVehicle,
    this.isServerBattery,
    this.isServerSale,
    this.isSupportRentalService,
    this.latitude,
    this.longitude,
    this.organizationId,
    this.sellProfit,
    this.serviceTime,
    this.uptime,
  });

  ShopBusinessList copyWith({
    int? agentId,
    String? busAddress,
    String? busContactName,
    String? busMobile,
    String? busName,
    int? busStatus,
    String? businessPicUrl,
    int? cardShowType,
    String? cityCode,
    String? cityName,
    int? ctime,
    int? delFlag,
    int? dis,
    int? id,
    int? isServeVehicle,
    int? isServerBattery,
    int? isServerSale,
    int? isSupportRentalService,
    int? latitude,
    int? longitude,
    int? organizationId,
    int? sellProfit,
    String? serviceTime,
    int? uptime,
  }) {
    return ShopBusinessList(
      agentId: agentId ?? this.agentId,
      busAddress: busAddress ?? this.busAddress,
      busContactName: busContactName ?? this.busContactName,
      busMobile: busMobile ?? this.busMobile,
      busName: busName ?? this.busName,
      busStatus: busStatus ?? this.busStatus,
      businessPicUrl: businessPicUrl ?? this.businessPicUrl,
      cardShowType: cardShowType ?? this.cardShowType,
      cityCode: cityCode ?? this.cityCode,
      cityName: cityName ?? this.cityName,
      ctime: ctime ?? this.ctime,
      delFlag: delFlag ?? this.delFlag,
      dis: dis ?? this.dis,
      id: id ?? this.id,
      isServeVehicle: isServeVehicle ?? this.isServeVehicle,
      isServerBattery: isServerBattery ?? this.isServerBattery,
      isServerSale: isServerSale ?? this.isServerSale,
      isSupportRentalService:
          isSupportRentalService ?? this.isSupportRentalService,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      organizationId: organizationId ?? this.organizationId,
      sellProfit: sellProfit ?? this.sellProfit,
      serviceTime: serviceTime ?? this.serviceTime,
      uptime: uptime ?? this.uptime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'agentId': agentId,
      'busAddress': busAddress,
      'busContactName': busContactName,
      'busMobile': busMobile,
      'busName': busName,
      'busStatus': busStatus,
      'businessPicUrl': businessPicUrl,
      'cardShowType': cardShowType,
      'cityCode': cityCode,
      'cityName': cityName,
      'ctime': ctime,
      'delFlag': delFlag,
      'dis': dis,
      'id': id,
      'isServeVehicle': isServeVehicle,
      'isServerBattery': isServerBattery,
      'isServerSale': isServerSale,
      'isSupportRentalService': isSupportRentalService,
      'latitude': latitude,
      'longitude': longitude,
      'organizationId': organizationId,
      'sellProfit': sellProfit,
      'serviceTime': serviceTime,
      'uptime': uptime,
    };
  }

  factory ShopBusinessList.fromMap(Map<String, dynamic> map) {
    return ShopBusinessList(
      agentId: map['agentId']?.toInt(),
      busAddress: map['busAddress'],
      busContactName: map['busContactName'],
      busMobile: map['busMobile'],
      busName: map['busName'],
      busStatus: map['busStatus']?.toInt(),
      businessPicUrl: map['businessPicUrl'],
      cardShowType: map['cardShowType']?.toInt(),
      cityCode: map['cityCode'],
      cityName: map['cityName'],
      ctime: map['ctime']?.toInt(),
      delFlag: map['delFlag']?.toInt(),
      dis: map['dis']?.toInt(),
      id: map['id']?.toInt(),
      isServeVehicle: map['isServeVehicle']?.toInt(),
      isServerBattery: map['isServerBattery']?.toInt(),
      isServerSale: map['isServerSale']?.toInt(),
      isSupportRentalService: map['isSupportRentalService']?.toInt(),
      latitude: map['latitude']?.toInt(),
      longitude: map['longitude']?.toInt(),
      organizationId: map['organizationId']?.toInt(),
      sellProfit: map['sellProfit']?.toInt(),
      serviceTime: map['serviceTime'],
      uptime: map['uptime']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopBusinessList.fromJson(String source) =>
      ShopBusinessList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShopBusinessList(agentId: $agentId, busAddress: $busAddress, busContactName: $busContactName, busMobile: $busMobile, busName: $busName, busStatus: $busStatus, businessPicUrl: $businessPicUrl, cardShowType: $cardShowType, cityCode: $cityCode, cityName: $cityName, ctime: $ctime, delFlag: $delFlag, dis: $dis, id: $id, isServeVehicle: $isServeVehicle, isServerBattery: $isServerBattery, isServerSale: $isServerSale, isSupportRentalService: $isSupportRentalService, latitude: $latitude, longitude: $longitude, organizationId: $organizationId, sellProfit: $sellProfit, serviceTime: $serviceTime, uptime: $uptime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShopBusinessList &&
        other.agentId == agentId &&
        other.busAddress == busAddress &&
        other.busContactName == busContactName &&
        other.busMobile == busMobile &&
        other.busName == busName &&
        other.busStatus == busStatus &&
        other.businessPicUrl == businessPicUrl &&
        other.cardShowType == cardShowType &&
        other.cityCode == cityCode &&
        other.cityName == cityName &&
        other.ctime == ctime &&
        other.delFlag == delFlag &&
        other.dis == dis &&
        other.id == id &&
        other.isServeVehicle == isServeVehicle &&
        other.isServerBattery == isServerBattery &&
        other.isServerSale == isServerSale &&
        other.isSupportRentalService == isSupportRentalService &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.organizationId == organizationId &&
        other.sellProfit == sellProfit &&
        other.serviceTime == serviceTime &&
        other.uptime == uptime;
  }

  @override
  int get hashCode {
    return agentId.hashCode ^
        busAddress.hashCode ^
        busContactName.hashCode ^
        busMobile.hashCode ^
        busName.hashCode ^
        busStatus.hashCode ^
        businessPicUrl.hashCode ^
        cardShowType.hashCode ^
        cityCode.hashCode ^
        cityName.hashCode ^
        ctime.hashCode ^
        delFlag.hashCode ^
        dis.hashCode ^
        id.hashCode ^
        isServeVehicle.hashCode ^
        isServerBattery.hashCode ^
        isServerSale.hashCode ^
        isSupportRentalService.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        organizationId.hashCode ^
        sellProfit.hashCode ^
        serviceTime.hashCode ^
        uptime.hashCode;
  }
}
