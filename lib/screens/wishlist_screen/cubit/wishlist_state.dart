part of 'wishlist_cubit.dart';

@freezed
class WishlistStateData with _$WishlistStateData {
  const factory WishlistStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Product> wishlist,
    @Default(false) bool isExist,
  }) = _WishlistStateData;
}

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState.initial({WishlistStateData? data}) = Initial;
  const factory WishlistState.status({WishlistStateData? data}) = Status;
  const factory WishlistState.getError({WishlistStateData? data}) = GetError;
  const factory WishlistState.getWishlist({WishlistStateData? data}) =
      GetOrders;

  const factory WishlistState.setIsExist({WishlistStateData? data}) =
      SetIsExist;
}
