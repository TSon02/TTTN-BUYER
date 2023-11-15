// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Coupon {
  final String id;
  final String condition;
  final String value;
  Coupon({
    required this.id,
    required this.value,
    required this.condition,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'condition': condition,
      'value': value,
    };
  }

  factory Coupon.fromJson(Map<String, dynamic> map) {
    return Coupon(
      id: map['id'] as String,
      condition: map['condition'] as String,
      value: map['value'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory Coupon.fromRawJson(String source) =>
      Coupon.fromJson(json.decode(source) as Map<String, dynamic>);
}
