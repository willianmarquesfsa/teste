import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:teste/app/shared/auth/auth_controller.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  logoff() async {
   await Modular.get<AuthController>().logout();
   Modular.to.pushReplacementNamed('/loguin');
  }
}
