import 'package:flutter/material.dart';

class HomeChangeNotifierController extends ChangeNotifier {
  late int counter;
  List<String> names = ['Luisa'];
  late String inputName;
  late int newCounter;

  HomeChangeNotifierController({int? initial}) {
    if (initial != null) {
      counter = initial;
    } else {
      counter = 0;
    }
  }

  void increment() {
    counter += 1;
    notifyListeners();
  }

  void onInputNameChanged(String input) {
    inputName = input;
  }

  void addName() {
    names.add(inputName);
    inputName = '';
    notifyListeners();
  }
}
