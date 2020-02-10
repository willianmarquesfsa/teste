import 'package:mobx/mobx.dart';

part 'shared_controller.g.dart';

class SharedController = _SharedBase with _$SharedController;

abstract class _SharedBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
