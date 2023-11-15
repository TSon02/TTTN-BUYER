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
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/models/wishlist/request/update_wishlist_request.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';

part 'wishlist_state.dart';
part 'wishlist_cubit.freezed.dart';

class WishlistCubit extends Cubit<WishlistState> {
  final _dataRepository = getIt<DataRepository>();

  WishlistCubit()
      : super(const WishlistState.initial(data: WishlistStateData()));

  Future<void> getMyWishlist(BuildContext context) async {
    try {
      emit(
        WishlistState.status(
          data: state.data!.copyWith(status: StatusType.loading),
        ),
      );
      // await Future.delayed(Duration(seconds: 3));
      final userProvider = Provider.of<UserProvider>(context, listen: false);
      log(userProvider.user.token!);
      log('message');
      final response =
          await _dataRepository.getMyWishlist(token: userProvider.user.token!);

      log(response.message!);

      log(response.toRawJson());
      // log(response.toRawJson());

      emit(WishlistState.getWishlist(
          data: state.data!.copyWith(wishlist: response.products ?? [])));

      emit(
        WishlistState.getError(
          data: state.data!.copyWith(status: StatusType.loaded),
        ),
      );
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
      log(e.toString());
    }
  }

  Future<void> createOrUpdateWishlist({
    required BuildContext context,
    required Product product,
  }) async {
    try {
      final userProvider = Provider.of<UserProvider>(context, listen: false);

      List<Product> newWishlist = [...state.data!.wishlist];

      if (!newWishlist.contains(product)) {
        newWishlist.add(product);
      } else {
        newWishlist.remove(product);
      }

      emit(WishlistState.getWishlist(
          data: state.data!.copyWith(wishlist: newWishlist)));

      isExist(id: product.id);

      final request = UpdateWishlistRequest(productId: product.id);

      final response = await _dataRepository.createOrUpdateWishlist(
        token: userProvider.user.token!,
        request: request,
      );

      log(response.message!);
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void isExist({required String id}) {
    bool isExist = false;

    for (var product in state.data!.wishlist) {
      if (product.id == id) {
        isExist = true;
      }
    }

    emit(
      WishlistState.setIsExist(
        data: state.data!.copyWith(isExist: isExist),
      ),
    );
  }
}
