// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UpdateWishlistResponse {
  final bool? success;
  final String? message;

  UpdateWishlistResponse({this.success, this.message});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
    };
  }

  factory UpdateWishlistResponse.fromJson(Map<String, dynamic> map) {
    return UpdateWishlistResponse(
      success: map['success'] != null ? map['success'] as bool : null,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory UpdateWishlistResponse.fromRawJson(String source) =>
      UpdateWishlistResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
