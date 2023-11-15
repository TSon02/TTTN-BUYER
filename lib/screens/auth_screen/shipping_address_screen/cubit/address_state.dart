part of 'address_cubit.dart';

@freezed
class AddressStateData with _$AddressStateData {
  const factory AddressStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<ShippingInformation> listAdress,
  }) = _AddressStateData;
}

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial({AddressStateData? data}) = Initial;
  const factory AddressState.status({AddressStateData? data}) = Status;
  const factory AddressState.getError({AddressStateData? data}) = GetError;
  const factory AddressState.getListAddress({AddressStateData? data}) =
      GetListAddress;

  const factory AddressState.deleteShippingInforById({AddressStateData? data}) =
      DeleteShippingInforById;
}
