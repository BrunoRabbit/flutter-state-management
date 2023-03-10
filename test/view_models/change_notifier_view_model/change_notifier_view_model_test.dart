import 'package:flutter_state_management/models/counter_model.dart';
import 'package:flutter_state_management/view_models/change_notifier_view_model/change_notifier_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterModel model;
  late ChangeNotifierViewModel tViewModel;
  group('ChangeNotifierViewModel', () {
    setUp(() {
      model = CounterModel(value: 0);
      tViewModel = ChangeNotifierViewModel(model: model);
    });
    
    test('should verify if method increment affect model', () {
      tViewModel.increment();
      expect(tViewModel.model.value, 1);
    });

    test('should verify if method decrement affect model', (){
      tViewModel.decrement();
      expect(tViewModel.model.value, -1);
    });

    test('should verify if method reset affect model', (){
      tViewModel.reset();
      expect(tViewModel.model.value, 0);
    });
  });
}
