// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/models/address/response/address.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';

part 'address_state.dart';
part 'address_cubit.freezed.dart';

class AddressCubit extends Cubit<AddressState> {
  final _dataRepository = getIt<DataRepository>();
  AddressCubit() : super(const AddressState.initial(data: AddressStateData()));

  Future<void> getListAddress({required BuildContext context}) async {
    try {
      emit(
        AddressState.status(
          data: state.data!.copyWith(status: StatusType.loading),
        ),
      );

      final userProvider = Provider.of<UserProvider>(context, listen: false);
      final response =
          await _dataRepository.getAddress(token: userProvider.user.token!);

      // log(response.toRawJson());
      // for (var add in response.lists!) {
      //   log(add.toRawJson());
      // }
      emit(
        AddressState.getListAddress(
          data: state.data!.copyWith(
            listAdress: response.list ?? [],
          ),
        ),
      );

      emit(
        AddressState.status(
          data: state.data!.copyWith(status: StatusType.loaded),
        ),
      );
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        type: SnackBarType.ERROR,
        message: e.toString(),
      );
    }
  }

  Future<void> delShippingInforById(
      {required String id, required BuildContext context}) async {
    try {
      UIHelpers.showLoading();

      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response = await _dataRepository.deleteShippingInforById(
          id: id, token: userProvider.user.token!);

      UIHelpers.showSnackBar(
        context: context,
        message: response.message!,
        type: response.success! ? SnackBarType.SUCCESS : SnackBarType.ERROR,
      );

      final newShippingInfors = state.data!.listAdress.where((address) {
        return address.id != id;
      }).toList();

      emit(AddressState.deleteShippingInforById(
          data: state.data!.copyWith(listAdress: newShippingInfors)));
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );

      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
