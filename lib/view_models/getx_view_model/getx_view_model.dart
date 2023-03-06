import 'package:get/get.dart';

import 'package:flutter_state_management/models/counter_model.dart';

class GetxViewModel extends GetxController {
  Rx<CounterModel> counterModel = CounterModel(value: 0).obs;

  void increment() {
    counterModel.value.value++;
  }

  void decrement() {
    counterModel.value.value--;
  }

  void reset() {
    counterModel.value.value = 0;
  }
}
