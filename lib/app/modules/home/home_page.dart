import 'package:flutter/material.dart';
import 'package:teste/app/modules/home/home_controller.dart';



final controller = HomeController();

class HomePage extends StatefulWidget {
  final String title;
  
  

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
                 icon: Icon(Icons.highlight_off),
                 onPressed: () => controller.logoff()
        ),
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
