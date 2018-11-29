import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'input widget',
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('控件学习'),),
      body: new Container(
        padding: EdgeInsets.all(25.0),
        child: new TextField(
          decoration: new InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            labelText: '请输入手机号',
            helperText: '是手机号',
          ),
        ),
      ),
    );
  }
}