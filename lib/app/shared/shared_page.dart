import 'package:flutter/material.dart';

class SharedPage extends StatefulWidget {
  final String title;
  const SharedPage({Key key, this.title = "Shared"}) : super(key: key);

  @override
  _SharedPageState createState() => _SharedPageState();
}

class _SharedPageState extends State<SharedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
