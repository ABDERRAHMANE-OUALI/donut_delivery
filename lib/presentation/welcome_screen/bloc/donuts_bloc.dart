import 'package:bloc/bloc.dart';
import 'package:donut_delivery/data.dart';
import 'package:donut_delivery/data/models/store_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donuts_event.dart';
part 'donuts_state.dart';
part 'donuts_bloc.freezed.dart';

class DonutsBloc extends Bloc<DonutsChange, DonutsState> {
  DonutsBloc() : super(DonutsState(donuts: items.first)) {
    on<DonutsChange>((event, emit) {
      emit(DonutsState(donuts: items[event.index]));
    });
  }
}
