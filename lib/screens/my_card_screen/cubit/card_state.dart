part of 'card_cubit.dart';

@freezed
class CardStateData with _$CardStateData {
  const factory CardStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<CreditCard> cards,
    CreditCard? cardResponse,
  }) = _CardStateData;
}

@freezed
class CardState with _$CardState {
  const factory CardState.initial({CardStateData? data}) = Initial;
  const factory CardState.status({CardStateData? data}) = Status;
  const factory CardState.getError({CardStateData? data}) = GetError;
  const factory CardState.getCards({CardStateData? data}) = GetCards;
  const factory CardState.deleteCard({CardStateData? data}) = DeleteCard;
  const factory CardState.getCardResponse({CardStateData? data}) =
      GetCardResponse;
}
