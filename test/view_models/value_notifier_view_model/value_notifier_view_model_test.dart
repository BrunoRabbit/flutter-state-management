import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_state_management/view_models/value_notifier_view_model/value_notifier_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterModel model;
  late ValueNotifierViewModel tViewModel;
  group('ValueNotifierViewModel', () {
    setUp(() {
      model = CounterModel(value: 0);
      tViewModel = ValueNotifierViewModel(model);
    });
    test('should verify if method increment affect model', () {
      tViewModel.increment();
      expect(tViewModel.model.value, 1);
    });

    test('should verify if method decrement affect model', () {
      tViewModel.decrement();
      expect(tViewModel.model.value, -1);
    });

    test('should verify if method reset affect model', () {
      tViewModel.reset();
      expect(tViewModel.model.value, 0);
    });
  });
}