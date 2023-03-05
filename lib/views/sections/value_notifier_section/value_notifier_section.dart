import 'package:flutter/material.dart';
import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_state_management/view_models/value_notifier_view_model/value_notifier_view_model.dart';
import 'package:flutter_state_management/views/base_screen.dart';

// ! keeping [ValueNotifierViewModel] inside the Stateful Widget,
// ! it will reset that state if he come back to the screen
// ? the answer to this is that when returning to the screen, 
// ? the valueNotifierModel always receives 0 when opening the page
// * so i made it globally
ValueNotifierViewModel valueNotifierModel = ValueNotifierViewModel(CounterModel(value: 0));

class ValueNotifierSection extends StatefulWidget {
  const ValueNotifierSection({Key? key}) : super(key: key);

  @override
  State<ValueNotifierSection> createState() => _ValueNotifierSectionState();
}

class _ValueNotifierSectionState extends State<ValueNotifierSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Value Notifier'),
      ),
      body: ValueListenableBuilder(
        valueListenable: valueNotifierModel,
        builder: (context, CounterModel model, widget) {
          return BaseScreen(
            increment: () {
              
              valueNotifierModel.increment();
            },
            decrement: () {
              valueNotifierModel.decrement();
            },
            reset: () {
              valueNotifierModel.reset();
            },
            value: model.value.toString(),
          );
        },
      ),
    );
  }
}
