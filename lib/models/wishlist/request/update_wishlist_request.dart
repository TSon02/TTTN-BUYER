// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UpdateWishlistRequest {
  final String productId;

  UpdateWishlistRequest({required this.productId});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'productId': productId,
    };
  }

  factory UpdateWishlistRequest.fromJson(Map<String, dynamic> map) {
    return UpdateWishlistRequest(
      productId: map['productId'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory UpdateWishlistRequest.fromRawJson(String source) =>
      UpdateWishlistRequest.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
