import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:teste/app/shared/auth/repositories/auth_repository_interface.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {

  final IAuthRepository _authRepository = Modular.get();
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  
  
  @observable
  FirebaseAuth status = FirebaseAuth.instance;


  @observable
  FirebaseUser user;
  
  

  @action
  setUser(FirebaseUser value) { 
    print("8888");
    user = value;
    //status == null ? AuthStatus.logoff : AuthStatus.login;
  }
  
  _AuthControllerBase(){
    _authRepository.getUser().then(setUser).catchError((e){
     print("errooo");
    });
  }


 Future loginWithGoogle() async {
   user = await _authRepository.getGoogleLogin();
}

Future logout() {
  return _authRepository.getLogout();
}

}

enum AuthStatus {
  loanding,
  login,
   logoff,

  

   }