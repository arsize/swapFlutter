import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'record.dart';

class Data {
  final int current;
  final int pages;
  final List<Record> records;
  final bool searchCount;
  final int size;
  final int total;
  Data({
    required this.current,
    required this.pages,
    required this.records,
    required this.searchCount,
    required this.size,
    required this.total,
  });

  Data copyWith({
    int? current,
    int? pages,
    List<Record>? records,
    bool? searchCount,
    int? size,
    int? total,
  }) {
    return Data(
      current: current ?? this.current,
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
      'pages': pages,
      'records': records.map((x) => x.toMap()).toList(),
      'searchCount': searchCount,
      'size': size,
      'total': total,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      current: map['current']?.toInt(),
      pages: map['pages']?.toInt(),
      records: List<Record>.from(map['records']?.map((x) => Record.fromMap(x))),
      searchCount: map['searchCount'],
      size: map['size']?.toInt(),
      total: map['total']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(current: $current, pages: $pages, records: $records, searchCount: $searchCount, size: $size, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.current == current &&
        other.pages == pages &&
        listEquals(other.records, records) &&
        other.searchCount == searchCount &&
        other.size == size &&
        other.total == total;
  }

  @override
  int get hashCode {
    return current.hashCode ^
        pages.hashCode ^
        records.hashCode ^
        searchCount.hashCode ^
        size.hashCode ^
        total.hashCode;
  }
}
