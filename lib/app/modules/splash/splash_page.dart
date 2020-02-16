import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:teste/app/shared/auth/auth_controller.dart';


class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}



class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();

  
  }

class _SplashPageState extends State<SplashPage> {
  
  ReactionDisposer disposer;


  
  void initState() {
    super.initState();
    disposer = autorun((_){
     final auth =  Modular.get<AuthController>();
     if(auth.status == AuthStatus.login){
       print("object1285");
       Modular.to.pushReplacementNamed('/home');
     } else if (auth.status == AuthStatus.logoff){
       print("object12");
          Modular.to.pushReplacementNamed('/loguin');
     
     }
      
    });

  }

  @override
  void dispose() {
    
    super.dispose();
    disposer();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
