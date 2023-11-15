// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/providers/order_details_provider.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  final _dataRepository = getIt<DataRepository>();

  CartCubit() : super(const CartState.initial(data: CartStateData()));

  Future<void> getCartProducts(BuildContext context) async {
    try {
      log('in get cart products function');
      emit(CartState.status(
        data: state.data!.copyWith(status: StatusType.loading),
      ));

      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final orderProvider =
          Provider.of<OrderDetailsProvider>(context, listen: false);

      log('response');

      final response = await _dataRepository.getCartProducts(
          token: userProvider.user.token!);

      log('emit');
      emit(CartState.getCartProducts(
        data: state.data!.copyWith(
          cartProducts: response.products ?? [],
          cartProductsOriginal: response.products ?? [],
        ),
      ));

      orderProvider.setCartProducts(list: response.products!);

      setTotalPrice();

      emit(CartState.status(
        data: state.data!.copyWith(
          status: StatusType.loaded,
        ),
      ));
      log('bottom get cart products function');

      // for (var element in orderProvider.orderProducts) {
      //   log(element.toRawJson());
      // }

      // log((state.data!.cartProducts == state.data!.cartProductsOriginal)
      // as String);
      // log('message');
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        type: SnackBarType.ERROR,
        message: e.toString(),
      );
    } finally {
      emit(CartState.status(
        data: state.data!.copyWith(status: StatusType.loaded),
      ));
    }
  }

  void updateProduct(
      {required int index,
      required bool isIncrease,
      required BuildContext context}) {
    final cartProducts = state.data!.cartProducts;
    final orderProvider =
        Provider.of<OrderDetailsProvider>(context, listen: false);

    if (isIncrease) {
      cartProducts[index].productVariant.quantity++;
    } else {
      cartProducts[index].productVariant.quantity--;
    }

    emit(
      CartState.updateProduct(
        data: state.data!.copyWith(cartProducts: cartProducts),
      ),
    );

    setTotalPrice();
    orderProvider.setCartProducts(list: cartProducts);
  }

  void setTotalPrice() {
    double sum = 0;

    for (var product in state.data!.cartProducts) {
      sum += product.price * product.productVariant.quantity;
    }

    emit(CartState.setTotalPrice(data: state.data!.copyWith(totalPrice: sum)));

    log(state.data!.totalPrice.toString());
  }

  List<CartProduct> getCartData() {
    return state.data!.cartProducts;
  }

  Future<void> deleteCartProductById(
      {required BuildContext context, required String id}) async {
    try {
      UIHelpers.showLoading();
      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response = await _dataRepository.deleteCartProductById(
          id: id, token: userProvider.user.token!);

      log(response.message!);
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        type: SnackBarType.ERROR,
        message: e.toString(),
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> deleteCartProductByUser({required BuildContext context}) async {
    try {
      UIHelpers.showLoading();
      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response =
          await _dataRepository.deleteCart(token: userProvider.user.token!);

      log(response.message!);
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        type: SnackBarType.ERROR,
        message: e.toString(),
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
