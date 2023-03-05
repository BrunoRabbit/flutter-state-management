import 'package:flutter/foundation.dart';
import 'package:flutter_state_management/models/counter_model.dart';

// ? [ChangeNotifier] can hold multiple values
class ChangeNotifierViewModel extends ChangeNotifier {
  final CounterModel model;

  ChangeNotifierViewModel({required this.model});

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
