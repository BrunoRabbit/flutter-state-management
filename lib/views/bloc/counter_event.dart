// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

class CounterEvent {}

class CounterIncrement extends CounterEvent {
  CounterModel model;

  CounterIncrement({
    required this.model,
  });
}

class CounterDecrement extends CounterEvent {
  CounterModel model;

  CounterDecrement({
    required this.model,
  });
}

class CounterReset extends CounterEvent {
  CounterModel model;

  CounterReset({
    required this.model,
  });
}
