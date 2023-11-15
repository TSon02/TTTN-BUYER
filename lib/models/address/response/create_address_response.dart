// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures/models/address/response/address.dart';

class CreateOrUpdateShippingInfoResponse {
  final String? message;
  final bool? success;
  final ShippingInformation? shippingInformation;

  CreateOrUpdateShippingInfoResponse(
      {this.message, this.success, this.shippingInformation});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'success': success,
      'shippingInfo': shippingInformation?.toJson(),
    };
  }

  factory CreateOrUpdateShippingInfoResponse.fromJson(
      Map<String, dynamic> map) {
    return CreateOrUpdateShippingInfoResponse(
      message: map['message'] != null ? map['message'] as String : null,
      success: map['success'] != null ? map['success'] as bool : null,
      shippingInformation: map['shippingInfo'] != null
          ? ShippingInformation.fromJson(
              map['shippingInfo'] as Map<String, dynamic>)
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CreateOrUpdateShippingInfoResponse.fromRawJson(String source) =>
      CreateOrUpdateShippingInfoResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
