import 'package:flutter/foundation.dart';

class CounterNotifier extends ValueNotifier<int> {
  CounterNotifier({int? value}) : super(value ?? 0);

  void increment() {
    value++;
  }
}