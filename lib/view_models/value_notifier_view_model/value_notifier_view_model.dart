import 'package:flutter/foundation.dart';
import 'package:flutter_state_management/models/counter_model.dart';

// ? [ValueNotifier] can hold single value
class ValueNotifierViewModel extends ValueNotifier<CounterModel> {
  final CounterModel model;

  ValueNotifierViewModel(this.model) : super(model);

  void increment() {
    model.increment();
    notifyListeners();
  }

  void decrement() {
    model.decrement();
    notifyListeners();
  }
  void reset() {
    model.reset();
    notifyListeners();
  }
}
