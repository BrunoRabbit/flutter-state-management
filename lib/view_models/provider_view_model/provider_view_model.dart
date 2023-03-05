import 'package:flutter/material.dart';

import 'package:flutter_state_management/models/counter_model.dart';

class ProviderViewModel extends ChangeNotifier {
  final CounterModel model;

  ProviderViewModel({required this.model});

  ProviderViewModel.instancialize() : model = CounterModel(value: 0);

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
