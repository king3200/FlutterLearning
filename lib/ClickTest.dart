import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '点击事件',
      home: new HomePage(),
    );
  }

}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }

}

class _HomePageState extends State<HomePage> {

  int _fontSize = 1;

  void _increseFontSize() {
    setState(() {
     _fontSize += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('hello font'),),
      body: new Container(
        child: new Text(_fontSize.toString(), style: new TextStyle(
          fontSize: _fontSize.toDouble(),
        ),),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: _increseFontSize,
        child: new Icon(Icons.check),),
    );
  }
}