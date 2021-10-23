import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'order.dart';
import 'record.dart';

class Data {
  final int? current;
  final List<Order>? orders;
  final int? pages;
  final List<Record>? records;
  final bool? searchCount;
  final int? size;
  final int? total;
  Data({
    this.current,
    this.orders,
    this.pages,
    this.records,
    this.searchCount,
    this.size,
    this.total,
  });

  Data copyWith({
    int? current,
    List<Order>? orders,
    int? pages,
    List<Record>? records,
    bool? searchCount,
    int? size,
    int? total,
  }) {
    return Data(
      current: current ?? this.current,
      orders: orders ?? this.orders,
      pages: pages ?? this.pages,
      records: records ?? this.records,
      searchCount: searchCount ?? this.searchCount,
      size: size ?? this.size,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'current': current,
      'orders': orders?.map((x) => x.toMap()).toList(),
      'pages': pages,
      'records': records?.map((x) => x.toMap()).toList(),
      'searchCount': searchCount,
      'size': size,
      'total': total,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      current: map['current']?.toInt(),
      orders:
          List<Order>.from((map['orders'] ?? []).map((x) => Order.fromMap(x))),
      pages: map['pages']?.toInt(),
      records: List<Record>.from(
          (map['records'] ?? []).map((x) => Record.fromMap(x))),
      searchCount: map['searchCount'],
      size: map['size']?.toInt(),
      total: map['total']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(current: $current, orders: $orders, pages: $pages, records: $records, searchCount: $searchCount, size: $size, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.current == current &&
        listEquals(other.orders, orders) &&
        other.pages == pages &&
        listEquals(other.records, records) &&
        other.searchCount == searchCount &&
        other.size == size &&
        other.total == total;
  }

  @override
  int get hashCode {
    return current.hashCode ^
        orders.hashCode ^
        pages.hashCode ^
        records.hashCode ^
        searchCount.hashCode ^
        size.hashCode ^
        total.hashCode;
  }
}
