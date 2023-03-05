// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:get/get.dart';

import 'package:flutter_state_management/models/counter_model.dart';

class GetxViewModel extends GetxController {
  Rx<CounterModel> counterModel = CounterModel(value: 0).obs;

  int increment() {
    return counterModel.value.value++;
  }

  int decrement() {
    return counterModel.value.value--;
  }

  int reset() {
    return counterModel.value.value = 0;
  }
}
