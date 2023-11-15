// ignore_for_file: use_build_context_synchronously

import 'dart:math';
import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/models/credit_card/request/create_card_request.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';

part 'card_state.dart';
part 'card_cubit.freezed.dart';

class CardCubit extends Cubit<CardState> {
  final _dataRepository = getIt<DataRepository>();

  CardCubit() : super(const CardState.initial(data: CardStateData()));

  Future<void> addNewCard(
      {required String? bank,
      required String cardNumber,
      required String fullName,
      required String expiredTime,
      required String cvv,
      required BuildContext context}) async {
    try {
      UIHelpers.showLoading();

      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final random = Random().nextInt(1000);

      if (bank == null) {
        emit(
          CardState.getError(
            data: state.data!.copyWith(error: "Bank is empty ,$random"),
          ),
        );
      } else if (cardNumber.trim().isEmpty) {
        emit(
          CardState.getError(
            data: state.data!.copyWith(error: "Card number is empty ,$random"),
          ),
        );
      } else if (cardNumber.length != 19) {
        emit(
          CardState.getError(
            data:
                state.data!.copyWith(error: "Card number is invalid ,$random"),
          ),
        );
      } else if (fullName.trim().isEmpty) {
        emit(
          CardState.getError(
            data: state.data!.copyWith(error: "Name is empty ,$random"),
          ),
        );
      } else if (expiredTime.trim().isEmpty) {
        emit(
          CardState.getError(
            data: state.data!.copyWith(error: "Expired time is empty ,$random"),
          ),
        );
      } else if (double.parse(expiredTime.split('/').first) > 12) {
        emit(
          CardState.getError(
            data:
                state.data!.copyWith(error: "Expired time is invalid ,$random"),
          ),
        );
      } else if (expiredTime.trim().length < 3) {
        emit(
          CardState.getError(
            data:
                state.data!.copyWith(error: "Expired time is invalid ,$random"),
          ),
        );
      } else if (cvv.trim().isEmpty) {
        emit(
          CardState.getError(
            data: state.data!.copyWith(error: "CVV is empty ,$random"),
          ),
        );
      } else if (cvv.length != 3) {
        emit(
          CardState.getError(
            data: state.data!.copyWith(error: "CVV is invalid ,$random"),
          ),
        );
      } else {
        // for (var product in productVariants) {
        //   print(product.toRawJson());
        // }

        dev.log(bank);
        dev.log(fullName);
        dev.log(cardNumber);
        dev.log(expiredTime);
        dev.log(cvv);

        final request = CreateCardRequest(
          cardNumber: cardNumber,
          fullName: fullName,
          bank: bank,
          expiredTime: expiredTime,
          cvv: cvv,
        );

        final response = await _dataRepository.createCard(
          request: request,
          token: userProvider.user.token!,
        );

        emit(CardState.getError(
            data:
                state.data!.copyWith(error: '${response.message!} ,$random')));
      }
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

  Future<void> getMyCards({required BuildContext context}) async {
    try {
      emit(
        CardState.status(
          data: state.data!.copyWith(status: StatusType.loading),
        ),
      );

      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response = await _dataRepository.getMyCards(
        token: userProvider.user.token!,
      );

      if (response.success == false) {
        emit(
          CardState.getError(
            data: state.data!.copyWith(
              status: StatusType.error,
              cards: response.cards!,
            ),
          ),
        );
      } else {
        emit(
          CardState.getCardResponse(
            data: state.data!.copyWith(
              cards: response.cards!,
            ),
          ),
        );

        emit(
          CardState.status(
            data: state.data!.copyWith(
              status: StatusType.loaded,
            ),
          ),
        );
      }
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
    }
  }

  Future<void> delCardById(
      {required String id, required BuildContext context}) async {
    try {
      dev.log('dsadsadsad');
      UIHelpers.showLoading();

      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response = await _dataRepository.deleteCardById(
          id: id, token: userProvider.user.token!);

      dev.log(response.toRawJson());

      UIHelpers.showSnackBar(
        context: context,
        message: response.message!,
        type: response.success! ? SnackBarType.SUCCESS : SnackBarType.ERROR,
      );

      print(response.toRawJson());
      print(state.data!.cards.length);

      final newListCards = state.data!.cards.where((card) {
        return card.id != id;
      }).toList();

      print(newListCards);

      emit(CardState.deleteCard(
          data: state.data!.copyWith(cards: newListCards)));
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
}
