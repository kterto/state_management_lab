import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_lab/src/home_change_notifier_controller.dart';

class AddNameModal extends StatelessWidget {
  const AddNameModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeChangeNotifierController>(
      builder: (context, controller, child) => Column(
        children: [
          const Text('Add a new Name'),
          TextField(
            onChanged: controller.onInputNameChanged,
          ),
          ElevatedButton(
            onPressed: () {
              controller.addName();
              Navigator.of(context).pop();
            },
            child: const Text('add'),
          ),
        ],
      ),
    );
  }
}
