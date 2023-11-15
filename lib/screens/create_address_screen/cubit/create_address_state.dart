part of 'create_address_cubit.dart';

@freezed
class CreateAddressStateData with _$CreateAddressStateData {
  const factory CreateAddressStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    CreateOrUpdateShippingInfoResponse? response,
  }) = _CreateAddressStateData;
}

@freezed
class CreateAddressState with _$CreateAddressState {
  const factory CreateAddressState.initial({CreateAddressStateData? data}) =
      Initial;
  const factory CreateAddressState.getError({CreateAddressStateData? data}) =
      GetError;
  const factory CreateAddressState.getAddress({CreateAddressStateData? data}) =
      GetAddress;
}
