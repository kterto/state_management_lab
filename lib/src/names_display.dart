import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_lab/main.dart';

class NamesDisplay extends ConsumerWidget {
  const NamesDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeStateNotifierControllerProvider);
    return ListView.builder(
      itemCount: state.names.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 80,
          child: ListTile(
            title: Text(state.names[index]),
          ),
        );
      },
    );
  }
}
