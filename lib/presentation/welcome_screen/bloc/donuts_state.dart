part of 'donuts_bloc.dart';

@freezed
class DonutsState with _$DonutState {
  const factory DonutsChange({
    const Map donuts
  }) = _DonutsChange;
}
