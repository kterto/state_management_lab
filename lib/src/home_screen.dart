import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_lab/src/add_name_modal.dart';
import 'package:state_management_lab/src/counter_display.dart';
import 'package:state_management_lab/src/home_change_notifier_controller.dart';
import 'package:state_management_lab/src/names_display.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CounterDisplay(),
            const Expanded(child: NamesDisplay()),
            ElevatedButton(
              onPressed: () => addNameModal(context),
              child: const Text('Add names'),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer<HomeChangeNotifierController>(
        builder: (context, controller, child) => FloatingActionButton(
          onPressed: controller.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  addNameModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const AddNameModal(),
    );
  }
}
