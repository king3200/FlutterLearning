import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'checkbox list test',
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

  bool _autoDownload = false;
  int  _radioGroupValue = 1;
  bool _switchValue = false;

  void changeAutoDownload(bool isChecked) {
    setState(() {
      _autoDownload = isChecked;
    });
  }

  void changeRadioGroupValue(int val) {
    setState(() {
      _radioGroupValue = val;
    });
  }

  void changeSwitch(bool val) {
    setState(() {
      _switchValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('title'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new CheckboxListTile(
              value: _autoDownload,
              onChanged: changeAutoDownload,
              title: new Text('是否自动下载'),
              subtitle: new Text('仅在WIFI环境下生效'),
              secondary: new Icon(Icons.file_download, color: Colors.blue,),
            ),
            new Divider(color: Colors.black,),
            new RadioListTile(
              value: 1,
              groupValue: _radioGroupValue,
              onChanged: changeRadioGroupValue,
              title: new Text('第一次'),
              subtitle: new Text('10分钟'),
              secondary: new Icon(Icons.timer, color: Colors.blue,),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            new RadioListTile(
              value: 2,
              groupValue: _radioGroupValue,
              onChanged: changeRadioGroupValue,
              title: new Text('第二次'),
              subtitle: new Text('20分钟'),
              secondary: new Icon(Icons.timer, color: Colors.blue,),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            new RadioListTile(
              value: 3,
              groupValue: _radioGroupValue,
              onChanged: changeRadioGroupValue,
              title: new Text('第三次'),
              subtitle: new Text('30分钟'),
              secondary: new Icon(Icons.timer, color: Colors.blue,),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            new Divider(color: Colors.black,),
            new SwitchListTile(
              value: _switchValue,
              onChanged: changeSwitch,
              secondary: new Icon(Icons.message, color: Colors.blue,),
              title: new Text('新消息提醒'),
            ),
            new Builder(builder: (BuildContext context) {
              return new CupertinoButton(
                  child: new Text('点我'),
                  onPressed: () {

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        debugPrint(context.toString());
                        return new SimpleDialog(
                          title: new Text('hello dialog'),
                          children: <Widget>[
                            new Text('正文~~~~~~~~~~~~~~~~~~~~~'),
                            new RaisedButton(onPressed: null, child: new Text('关闭'),)
                          ],
                        );
                      },
                    );
                  }
              );
            }),
          ],
        ),
      )
    );
  }
}