import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/app/modules/loguin/loguin_controller.dart';

class LoguinPage extends StatefulWidget {
  final String title;
  const LoguinPage({Key key, this.title = "Loguin"}) : super(key: key);

  @override
  _LoguinPageState createState() => _LoguinPageState();
}

class _LoguinPageState extends ModularState<LoguinPage, LoguinController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
        RaisedButton(onPressed: controller.loginWithGoole,
                child: Text('Login winth Gooogle'), )
     ],),
    );
  }
}
