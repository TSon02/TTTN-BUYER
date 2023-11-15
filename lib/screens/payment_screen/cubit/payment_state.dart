part of 'payment_cubit.dart';

@freezed
class PaymentStateData with _$PaymentStateData {
  const factory PaymentStateData({
    @Default('') String error,
    @Default([]) List<Order> orders,
  }) = _PaymentStateData;
}

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial({PaymentStateData? data}) = Initial;
  const factory PaymentState.getError({PaymentStateData? data}) = GetError;
  const factory PaymentState.setOrders({PaymentStateData? data}) = SetOrders;
}
