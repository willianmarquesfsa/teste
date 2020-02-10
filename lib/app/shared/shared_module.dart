import 'package:teste/app/shared/shared_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/app/shared/shared_page.dart';

class SharedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SharedPage()),
      ];

  static Inject get to => Inject<SharedModule>.of();
}
