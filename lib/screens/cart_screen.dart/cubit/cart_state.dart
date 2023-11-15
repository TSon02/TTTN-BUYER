part of 'cart_cubit.dart';

@freezed
class CartStateData with _$CartStateData {
  const factory CartStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default(0) double totalPrice,
    @Default([]) List<CartProduct> cartProducts,
    @Default([]) List<CartProduct> cartProductsOriginal,
  }) = _CartStateData;
}

@freezed
class CartState with _$CartState {
  const factory CartState.initial({CartStateData? data}) = Initial;
  const factory CartState.status({CartStateData? data}) = Status;
  const factory CartState.getError({CartStateData? data}) = GetError;
  const factory CartState.setTotalPrice({CartStateData? data}) = SetTotalPrice;
  const factory CartState.getCartProducts({CartStateData? data}) =
      GetCartProducts;
  const factory CartState.updateProduct({CartStateData? data}) = UpdateProduct;
}
