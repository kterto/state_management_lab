import 'package:state_notifier/state_notifier.dart';

class HomeState {
  final int counter;
  final List<String> names;
  final String inputName;

  HomeState({
    required this.counter,
    required this.inputName,
    required this.names,
  });
}

class HomeStateNotifierController extends StateNotifier<HomeState>
    with LocatorMixin {
  HomeStateNotifierController({int? initial})
      : super(HomeState(
          counter: initial ?? 0,
          inputName: '',
          names: ['Luisa'],
        ));

  void increment() {
    var counter = state.counter;
    counter++;
    state = HomeState(
      counter: counter,
      inputName: state.inputName,
      names: state.names,
    );
  }

  void onInputNameChanged(String input) {
    state = HomeState(
      counter: state.counter,
      inputName: input,
      names: state.names,
    );
  }

  void addName() {
    var names = state.names;
    state = HomeState(
      counter: state.counter,
      inputName: '',
      names: names..add(state.inputName),
    );
  }
}
