import 'package:flutter/material.dart';
import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_state_management/view_models/change_notifier_view_model/change_notifier_view_model.dart';
import 'package:flutter_state_management/views/base_screen.dart';

ChangeNotifierViewModel changeNotifierViewModel =
    ChangeNotifierViewModel(model: CounterModel(value: 0));

class ChangeNotifierSection extends StatefulWidget {
  const ChangeNotifierSection({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierSection> createState() => _ChangeNotifierSectionState();
}

class _ChangeNotifierSectionState extends State<ChangeNotifierSection> {
  @override
  void initState() {
    super.initState();
    changeNotifierViewModel.addListener(
      () => mounted ? setState(() {}) : null,
    );
  }

  @override
  void dispose() {
    changeNotifierViewModel.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier'),
      ),
      body: BaseScreen(
        increment: () {
          changeNotifierViewModel.increment();
        },
        decrement: () {
          changeNotifierViewModel.decrement();
        },
        reset: () {
          changeNotifierViewModel.reset();
        },
        value: changeNotifierViewModel.model.value.toString(),
      ),
    );
  }
}
