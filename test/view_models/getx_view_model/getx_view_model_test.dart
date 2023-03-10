import 'package:flutter_state_management/view_models/getx_view_model/getx_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late GetxViewModel tViewModel;
  group('GetxViewModel', () {
    setUp(() {
      tViewModel = GetxViewModel();
    });

    test('should verify if method increment affect model', () {
      tViewModel.increment();
      expect(tViewModel.counterModel.value.value, 1);
    });

    test('should verify if method decrement affect model', () {
      tViewModel.decrement();
      expect(tViewModel.counterModel.value.value, -1);
    });

    test('should verify if method reset affect model', () {
      tViewModel.reset();
      expect(tViewModel.counterModel.value.value, 0);
    });
  });
}
