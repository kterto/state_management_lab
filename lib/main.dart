import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart' as p;
import 'package:state_management_lab/src/home_change_notifier_controller.dart';
import 'package:state_management_lab/src/home_screen.dart';
import 'package:state_management_lab/src/home_state_notifier_controller.dart';

final homeStateNotifierControllerProvider =
    StateNotifierProvider<HomeStateNotifierController, HomeState>(
        (_) => HomeStateNotifierController());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return p.ChangeNotifierProvider(
      create: (_) => HomeChangeNotifierController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
