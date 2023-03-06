// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

class CounterState {
  final CounterModel counterModel;

  CounterState(this.counterModel);

  CounterState copyWith({CounterModel? counterModel}) {
    return CounterState(this.counterModel);
  }
}
