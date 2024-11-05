import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_lab/main.dart';

class AddNameModal extends ConsumerWidget {
  const AddNameModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text('Add a new Name'),
        TextField(
          onChanged: ref
              .read(homeStateNotifierControllerProvider.notifier)
              .onInputNameChanged,
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(homeStateNotifierControllerProvider.notifier).addName();
            Navigator.of(context).pop();
          },
          child: const Text('add'),
        ),
      ],
    );
  }
}
