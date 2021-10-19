class AddressModel {
  AddressData? data;
  int? code;
  String? msg;

  AddressModel({this.data, this.code, this.msg});

  AddressModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? AddressData.fromJson(json['data']) : null;
    code = json['code'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['data'] = data?.toJson();
    result['code'] = code;
    result['msg'] = msg;
    return result;
  }
}

class AddressData {
  List<Records>? records;
  int? total;
  int? size;
  int? current;
  bool? searchCount;
  List? orders;
  int? pages;

  AddressData({
    this.records,
    this.total,
    this.size,
    this.current,
    this.searchCount,
    this.orders,
    this.pages,
  });

  AddressData.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records!.add(Records.fromJson(v));
      });
    }
    orders = json['orders'];
    total = json['total'];
    size = json['size'];
    current = json['current'];
    searchCount = json['searchCount'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    } else {
      data['records'] = [];
    }

    data['orders'] = orders;
    data['total'] = total;
    data['size'] = size;
    data['current'] = current;
    data['searchCount'] = searchCount;
    data['pages'] = pages;
    return data;
  }
}

class Records {
  int? id;
  String? accountUid;
  String? consignee;
  String? consigneePhone;
  String? takeRegion;
  String? detailedAddress;
  bool? defaultAddress;
  int? ctime;

  Records({
    this.id,
    this.accountUid,
    this.consignee,
    this.consigneePhone,
    this.takeRegion,
    this.detailedAddress,
    this.defaultAddress,
    this.ctime,
  });

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accountUid = json['accountUid'];
    consignee = json['consignee'];
    consigneePhone = json['consigneePhone'];
    takeRegion = json['takeRegion'];
    detailedAddress = json['detailedAddress'];
    defaultAddress = json['defaultAddress'];
    ctime = json['ctime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['accountUid'] = accountUid;
    data['consignee'] = consignee;
    data['consigneePhone'] = consigneePhone;
    data['takeRegion'] = takeRegion;
    data['detailedAddress'] = detailedAddress;
    data['defaultAddress'] = defaultAddress;
    data['ctime'] = ctime;
    return data;
  }
}
