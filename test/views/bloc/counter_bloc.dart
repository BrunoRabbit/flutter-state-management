import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_state_management/views/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterBloc bloc;

  group('CounterBloc', () {
    setUp(() {
      bloc = CounterBloc();
    });

    tearDown(() {
      bloc.close();
    });

    test('initial state is CounterState(CounterModel(value: 0))', () {
      expect(bloc.state, equals(CounterState(CounterModel(value: 0))));
    });

    blocTest<CounterBloc, CounterState>(
      'emits [CounterState(model)] when CounterIncrement is added',
      build: () => bloc,
      act: (bloc) => bloc.add(CounterIncrement(model: CounterModel(value: 1))),
      expect: () => [CounterState(CounterModel(value: 1))],
    );
    blocTest<CounterBloc, CounterState>(
      'emits [CounterState(model)] when CounterDecrement is added',
      build: () => bloc,
      act: (bloc) => bloc.add(CounterDecrement(model: CounterModel(value: 1))),
      expect: () => [CounterState(CounterModel(value: -1))],
    );

    blocTest<CounterBloc, CounterState>(
      'emits [CounterState(model)] when CounterReset is added',
      build: () => bloc,
      act: (bloc) => bloc.add(CounterReset(model: CounterModel(value: 5))),
      expect: () => [CounterState(CounterModel(value: 0))],
    );
  });
}
