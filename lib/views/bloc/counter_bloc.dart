import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/models/counter_model.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(CounterModel(value: 0))) {
    on<CounterIncrement>(_onCounterIncrement);
    on<CounterDecrement>(_onCounterDecrement);
    on<CounterReset>(_onCounterReset);
  }

  _onCounterIncrement(CounterIncrement state, Emitter<CounterState> emit) {
    state.model.increment();
    emit(CounterState(state.model));
  }

  _onCounterDecrement(CounterDecrement state, Emitter<CounterState> emit) {
    state.model.decrement();
    emit(CounterState(state.model));
  }

  _onCounterReset(CounterReset state, Emitter<CounterState> emit) {
    state.model.reset();
    emit(CounterState(state.model));
  }
}
