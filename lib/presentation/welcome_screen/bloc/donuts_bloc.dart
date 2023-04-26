import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donuts_event.dart';
part 'donuts_state.dart';

class DonutsBloc extends Bloc<DonutsChange, DonutsState> {
  DonutsBloc() : super(DonutsState()) {
    on<DonutsChange>((event, emit) {
      // TODO: implement event handler
    });
  }
}
