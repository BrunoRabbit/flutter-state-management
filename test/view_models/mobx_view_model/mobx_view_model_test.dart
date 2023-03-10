import 'package:flutter_state_management/view_models/mobx_view_model/mobx_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late MobxViewModel tViewModel;

  group('MobxViewModel', () {
    setUp(() {
      tViewModel = MobxViewModel();
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
