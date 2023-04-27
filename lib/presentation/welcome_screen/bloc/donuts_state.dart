part of 'donuts_bloc.dart';

@freezed
class DonutsState with _$DonutsState {
  const factory DonutsState({required List<StoreItemModel> donuts}) =
      _DonutsState;
}
