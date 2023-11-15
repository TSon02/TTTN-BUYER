import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/get_it.dart';
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/providers/user_provider.dart';
import 'package:trendy_treasures/repositories/data_repositories.dart';
import 'package:trendy_treasures/utils/ui_helpers.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final _dataRepository = getIt<DataRepository>();

  HomeCubit() : super(const HomeState.initial(data: HomeStateData()));

  Future<void> getAllProducts(BuildContext context) async {
    try {
      emit(HomeState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response =
          await _dataRepository.getAllProducts(token: userProvider.user.token!);

      emit(HomeState.getProducts(
          data: state.data!.copyWith(
        products: response.products ?? [],
        productsOriginal: response.products ?? [],
      )));

      setProducts(response.products!);
      changeProduct();
      emit(HomeState.status(
          data: state.data!.copyWith(status: StatusType.loaded)));

      log('products');
      for (var element in state.data!.products) {
        log(element.toRawJson());
      }
    } catch (e) {
      log('Something went wrong');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void setProducts(List<Product> products) {
    final sortProductsByDate = products.reversed.toList();
    final sortProductsByRating = products;

    sortProductsByRating.sort(
      (a, b) {
        return b.rating.compareTo(a.rating);
      },
    );
    log('setProducts');
    emit(
      HomeState.setPartOfProducts(
        data: state.data!.copyWith(
          newProducts: sortProductsByDate,
          popularProducts: sortProductsByRating,
        ),
      ),
    );
  }

  void changeProduct({String category = "Clothes"}) {
    final productsByCategory = state.data!.products.where((product) {
      return product.category == category;
    }).toList();

    emit(HomeState.setProductsByCategory(
        data: state.data!.copyWith(productsByCategory: productsByCategory)));
  }

  List<Product> searchProduct({required String query}) {
    List<Product> listProductsOriginal = [...state.data!.productsOriginal];
    List<Product> similarProducts = [];

    for (var product in listProductsOriginal) {
      String productNameLower = product.productName.toLowerCase();
      String searchStringLower = query.toLowerCase();

      log(productNameLower);
      log(searchStringLower);

      double stringSimilarScore =
          similarityScore(searchStringLower, productNameLower);

      if (stringSimilarScore >= 0.4) {
        similarProducts.add(product);
      }
    }

    return similarProducts;
  }

  double similarityScore(String a, String b) {
    if (a.isEmpty && b.isEmpty) return 1;
    if ((a.isEmpty || b.isEmpty) && !(a.isEmpty && b.isEmpty)) return 0;

    var ret = 0.0;
    var prevMatchIndexPlusOne = 0;

    for (var i = 0; i < b.length; i++) {
      var index = a.indexOf(b[i], prevMatchIndexPlusOne);
      if (index < 0) {
        ret += a.length;
      } else {
        ret += index - prevMatchIndexPlusOne;
        prevMatchIndexPlusOne = index + 1;
      }
    }

    prevMatchIndexPlusOne = 0;

    for (var i = 0; i < a.length; i++) {
      var index = b.indexOf(a[i], prevMatchIndexPlusOne);
      if (index < 0) {
        ret += b.length;
      } else {
        ret += index - prevMatchIndexPlusOne;
        prevMatchIndexPlusOne = index + 1;
      }
    }

    return 1 - ret / 2 / (a.length * b.length);
  }
}
