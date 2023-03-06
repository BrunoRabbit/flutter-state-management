// ignore_for_file: library_private_types_in_public_api

import 'package:flutter_state_management/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'mobx_view_model.g.dart';

class MobxViewModel = _MobxViewModel with _$MobxViewModel;

abstract class _MobxViewModel with Store {
  @observable
  CounterModel model = CounterModel(value: 0);

  @observable
  int index = 0;

  @action
  void increment() {
    model = CounterModel(value: index += 1);
  }

  @action
  void decrement() {
    model = CounterModel(value: index -= 1);
  }

  @action
  void reset() {
    model = CounterModel(value: index = 0);
  }
}
