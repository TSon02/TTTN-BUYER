// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/models/order/response/order.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  final _dataRepository = getIt<DataRepository>();

  OrderCubit() : super(const OrderState.initial(data: OrderStateData()));

  Future<void> getMyOrders(BuildContext context) async {
    try {
      emit(
        OrderState.status(
          data: state.data!.copyWith(status: StatusType.loading),
        ),
      );
      // await Future.delayed(Duration(seconds: 3));
      final userProvider = Provider.of<UserProvider>(context, listen: false);
      log('message');
      final response =
          await _dataRepository.getMyOrders(token: userProvider.user.token!);

      log(response.message!);

      log(response.toRawJson());

      if (response.success == false) {
        emit(
          OrderState.getError(
            data: state.data!.copyWith(
                error: "Something went wrong!", status: StatusType.error),
          ),
        );
      } else {
        emit(OrderState.getOrders(
            data: state.data!.copyWith(orders: response.orders ?? [])));

        getOrdersByStatus(status: myOrderStatus[0]);

        emit(
          OrderState.getError(
            data: state.data!.copyWith(status: StatusType.loaded),
          ),
        );
      }
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
      log(e.toString());
    }
  }

  void getOrdersByStatus({required String status}) {
    List<Order> orders = [];
    if (status == "Completed") {
      orders = state.data!.orders
          .where((element) => element.orderStatus == "delivered")
          .toList();
    } else {
      orders = state.data!.orders
          .where((element) => element.orderStatus != "delivered")
          .toList();
    }

    log(orders.toString());

    emit(OrderState.getOrders(
        data: state.data!.copyWith(ordersByStatus: orders)));
  }
}
