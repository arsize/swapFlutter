import 'dart:convert';

class Order {
  final bool? asc;
  final String? column;
  Order({
    this.asc,
    this.column,
  });

  Order copyWith({
    bool? asc,
    String? column,
  }) {
    return Order(
      asc: asc ?? this.asc,
      column: column ?? this.column,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'asc': asc,
      'column': column,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      asc: map['asc'],
      column: map['column'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() => 'Order(asc: $asc, column: $column)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Order && other.asc == asc && other.column == column;
  }

  @override
  int get hashCode => asc.hashCode ^ column.hashCode;
}
