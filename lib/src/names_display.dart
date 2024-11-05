import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_lab/src/home_change_notifier_controller.dart';

class NamesDisplay extends StatelessWidget {
  const NamesDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeChangeNotifierController>(
      builder: (context, controller, child) => ListView.builder(
        itemCount: controller.names.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 80,
            child: ListTile(
              title: Text(controller.names[index]),
            ),
          );
        },
      ),
    );
  }
}
