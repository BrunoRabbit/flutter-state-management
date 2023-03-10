import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_state_management/views/base_screen.dart';
import 'package:flutter_state_management/views/bloc/counter_bloc.dart';

CounterModel counterModel = CounterModel(value: 0);

class BlocSection extends StatefulWidget {
  const BlocSection({Key? key}) : super(key: key);

  @override
  State<BlocSection> createState() => _BlocSectionState();
}

class _BlocSectionState extends State<BlocSection> {
  late CounterBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<CounterBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        bloc: bloc,
        builder: (context, state) {
          return BaseScreen(
            increment: () {
              bloc.add(CounterIncrement(model: counterModel));
            },
            decrement: () {
              bloc.add(CounterDecrement(model: counterModel));
            },
            reset: () {
              bloc.add(CounterReset(model: counterModel));
            },
            value: "${state.counterModel.value}",
          );
        },
      ),
    );
  }
}
