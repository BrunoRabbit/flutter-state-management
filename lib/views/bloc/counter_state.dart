// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

class CounterState extends Equatable{
  final CounterModel counterModel;

  const CounterState(this.counterModel);
  
  @override
  List<Object?> get props => [];

}
