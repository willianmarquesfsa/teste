import 'package:teste/app/modules/loguin/loguin_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/app/modules/loguin/loguin_page.dart';

class LoguinModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoguinController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoguinPage()),
      ];

  static Inject get to => Inject<LoguinModule>.of();
}
