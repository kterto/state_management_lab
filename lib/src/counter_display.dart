import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_lab/src/home_change_notifier_controller.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Consumer<HomeChangeNotifierController>(
          builder: (context, controller, child) => Text(
            '${controller.counter}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ],
    );
  }
}
