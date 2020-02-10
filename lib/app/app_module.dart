import 'package:teste/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:teste/app/app_widget.dart';
import 'package:teste/app/modules/home/home_module.dart';
import 'package:teste/app/shared/auth/auth_controller.dart';
import 'package:teste/app/shared/auth/repositories/auth_repository.dart';
import 'package:teste/app/shared/auth/repositories/auth_repository_interface.dart';

import 'modules/loguin/loguin_module.dart';




class AppModule extends MainModule {
  @override
  List<Bind> get binds => [ 
        Bind((i) => AppController()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),      
      
      ];

  @override
  List<Router> get routers => [
        Router('/', module: LoguinModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
