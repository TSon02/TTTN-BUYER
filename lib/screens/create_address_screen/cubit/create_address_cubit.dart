// ignore_for_file: use_build_context_synchronously

import 'dart:developer' as dev;
import 'dart:math';

import 'package:dvhcvn/dvhcvn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/models/address/request/create_address_request.dart';
import 'package:trendy_treasures/models/address/response/create_address_response.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';

part 'create_address_state.dart';
part 'create_address_cubit.freezed.dart';

class CreateAddressCubit extends Cubit<CreateAddressState> {
  final _dataRepository = getIt<DataRepository>();

  CreateAddressCubit()
      : super(const CreateAddressState.initial(data: CreateAddressStateData()));

  Future<void> createAddress({
    required BuildContext context,
    required Level1? level1,
    required Level2? level2,
    required Level3? level3,
    required String streetName,
    required String receiver,
    required String phoneNumber,
  }) async {
    try {
      final random = Random().nextInt(1000);

      UIHelpers.showLoading();
      if (level1 == null) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'Province / City cannot be empty. ,$random')));
      } else if (level2 == null) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'City / District cannot be empty. ,$random')));
      } else if (level3 == null) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'Ward / Village cannot be empty. ,$random')));
      } else if (streetName.trim().length < 10) {
        emit(CreateAddressState.getError(
            data: state.data!.copyWith(
                error:
                    'Minimum length required of Street name is 10. ,$random')));
      } else if (phoneNumber.trim().isEmpty) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'Phone number cannot be empty ,$random')));
      } else if (RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$')
              .hasMatch(phoneNumber) ==
          false) {
        emit(CreateAddressState.getError(
            data:
                state.data!.copyWith(error: 'Phone number invalid. ,$random')));
      } else {
        dev.log('message');
        dev.log(level1.name);
        dev.log(level2.name);
        dev.log(level3.name);
        dev.log(streetName);
        dev.log(receiver);
        dev.log(phoneNumber);

        final userProvider = Provider.of<UserProvider>(context, listen: false);
        final request = CreateShippingInfoRequest(
          level1: level1.name,
          level2: level2.name,
          level3: level3.name,
          phoneNumber: phoneNumber,
          streetName: streetName,
          receiver: receiver,
        );
        final response = await _dataRepository.createAddress(
            request: request, token: userProvider.user.token!);

        emit(
          CreateAddressState.getAddress(
            data: state.data!.copyWith(
              error: response.message!,
              response: response,
            ),
          ),
        );
      }
    } catch (e) {
      UIHelpers.showSnackBar(context: context, message: e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateAddress({
    required BuildContext context,
    required Level1? level1,
    required Level2? level2,
    required Level3? level3,
    required String streetName,
    required String receiver,
    required String phoneNumber,
    required String id,
  }) async {
    try {
      final random = Random().nextInt(1000);

      UIHelpers.showLoading();
      if (level1 == null) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'Province / City cannot be empty. ,$random')));
      } else if (level2 == null) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'City / District cannot be empty. ,$random')));
      } else if (level3 == null) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'Ward / Village cannot be empty. ,$random')));
      } else if (streetName.trim().length < 10) {
        emit(CreateAddressState.getError(
            data: state.data!.copyWith(
                error:
                    'Minimum length required of Street name is 10. ,$random')));
      } else if (phoneNumber.trim().isEmpty) {
        emit(CreateAddressState.getError(
            data: state.data!
                .copyWith(error: 'Phone number cannot be empty ,$random')));
      } else if (RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$')
              .hasMatch(phoneNumber) ==
          false) {
        emit(CreateAddressState.getError(
            data:
                state.data!.copyWith(error: 'Phone number invalid. ,$random')));
      } else {
        dev.log('message');
        dev.log(level1.name);
        dev.log(level2.name);
        dev.log(level3.name);
        dev.log(streetName);
        dev.log(receiver);
        dev.log(phoneNumber);
        dev.log(id);

        final userProvider = Provider.of<UserProvider>(context, listen: false);
        final request = CreateShippingInfoRequest(
          level1: level1.name,
          level2: level2.name,
          level3: level3.name,
          phoneNumber: phoneNumber,
          streetName: streetName,
          receiver: receiver,
        );
        final response = await _dataRepository.updateShippingInforById(
            id: id, request: request, token: userProvider.user.token!);

        dev.log(response.toRawJson());
        // emit(
        //   CreateAddressState.getAddress(
        //     data: state.data!.copyWith(
        //       error: response.message!,
        //       response: response,
        //     ),
        //   ),
        // );

        if (response.success == false) {
          emit(CreateAddressState.getError(
              data: state.data!.copyWith(
                  error: '${response.message!} ,$random', response: response)));
        } else {
          emit(CreateAddressState.getError(
              data: state.data!.copyWith(
                  error: '${response.message} ,$random', response: response)));
        }
      }
    } catch (e) {
      UIHelpers.showSnackBar(context: context, message: e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
