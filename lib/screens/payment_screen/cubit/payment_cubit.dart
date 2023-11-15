// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/models/address/response/address.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures/models/order/request/create_order_request.dart';
import 'package:trendy_treasures/models/order/response/order.dart';
import 'package:trendy_treasures/models/product/response/order_product.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';
part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState.initial(data: PaymentStateData()));
  final _dataRepository = getIt<DataRepository>();

  Future<void> createOrder({
    required List<OrderProduct> products,
    required ShippingInformation shippingInfo,
    required Payment paymentInfo,
    required BuildContext context,
  }) async {
    try {
      UIHelpers.showLoading();
      final userProvider = Provider.of<UserProvider>(context, listen: false);

      // log(products.toString());
      // log(shippingInfo.toRawJson());
      // log(paymentInfo.toRawJson());
      final request = CreateOrderRequest(
          products: products,
          shippingInfo: shippingInfo,
          paymentInfo: paymentInfo);

      final response = await _dataRepository.createOrder(
          request: request, token: userProvider.user.token!);

      final responseDeleteCart =
          await _dataRepository.deleteCart(token: userProvider.user.token!);

      // log(response.orders!.first.toRawJson());
      // log(response.orders![1].toRawJson());

      log(responseDeleteCart.message!);
      if (response.success == true) {
        emit(PaymentState.setOrders(
            data: state.data!.copyWith(
                orders: response.orders ?? [], error: response.message!)));
      } else {
        UIHelpers.showSnackBar(context: context, message: response.message!);
      }
    } catch (e) {
      UIHelpers.showSnackBar(context: context, message: e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
