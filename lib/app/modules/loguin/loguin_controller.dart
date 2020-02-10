import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:teste/app/shared/auth/auth_controller.dart';


part 'loguin_controller.g.dart';

class LoguinController = _LoguinBase with _$LoguinController;

abstract class _LoguinBase with Store {
  
  AuthController auth = Modular.get();

  @observable
  bool loanding = false;

  @action
  Future loginWithGoole() async {
    try {
      loanding = true;
      await auth.loginWithGoogle();
      Modular.to.pushReplacementNamed('/home');
    } catch (e) { loanding = false;
    }
    
  }
}
