part of 'order_cubit.dart';

@freezed
class OrderStateData with _$OrderStateData {
  const factory OrderStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Order> orders,
    @Default([]) List<Order> ordersByStatus,
  }) = _OrderStateData;
}

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial({OrderStateData? data}) = Initial;
  const factory OrderState.status({OrderStateData? data}) = Status;
  const factory OrderState.getError({OrderStateData? data}) = GetError;
  const factory OrderState.getOrders({OrderStateData? data}) = GetOrders;
}
