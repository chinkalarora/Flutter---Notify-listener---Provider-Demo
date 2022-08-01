import 'package:flutter/material.dart';
import 'package:notifylisteners_example/my_value_model.dart';

class MyAppNot extends StatelessWidget {
  CounterNotifier counter = CounterNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () => counter.increment(),
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: counter,
          builder: (context, value, child) {
            return Text(value.toString());
          },
        ),
      ),
    );
  }
}