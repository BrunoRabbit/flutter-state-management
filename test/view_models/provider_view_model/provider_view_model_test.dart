import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_state_management/view_models/provider_view_model/provider_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterModel model;
  late ProviderViewModel tViewModel;
  group('ProviderViewModel', () {
    setUp(() {
      model = CounterModel(value: 0);
      tViewModel = ProviderViewModel(model: model);
    });
    test('instanciate a new CounterModel', () {
      final init = ProviderViewModel.instancialize();
      expect(init.model, isA<CounterModel>());
      expect(init.model, isNot(same(CounterModel(value: 0))));
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
