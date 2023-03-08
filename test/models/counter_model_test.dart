import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CounterModel tCounterModel = CounterModel(value: 0);

  group('CounterModelTest', () {
    test("Initial value is 0", () {
      expect(tCounterModel.value, 0);
    });
    test("Should increment [value]", () {
      tCounterModel.increment();

      expect(tCounterModel.value, 1);
    });
    test("Should decrement [value]", () {
      tCounterModel.decrement();

      expect(tCounterModel.value, 0);
      // result must be [0] because CounterModel has already been instantiated
      // and its value increased + 1;
    });
    test("Should reset [value]", () {
      tCounterModel.reset();

      expect(tCounterModel.value, 0);
    });
  });
}
