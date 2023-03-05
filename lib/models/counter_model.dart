class CounterModel {
  int value;

  CounterModel({required this.value});

  void increment() {
    value++;
  }

  void decrement() {
    value--;
  }

  void reset() {
    value = 0;
  }
}
