import "package:flutter/material.dart";


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '主页',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text('tidus test bar'),
          ),
          body: new Container(
            alignment: Alignment.center,
            child: new Container(
              color: Colors.blue,
              width: 300,
              height: 300,
              alignment: Alignment.bottomRight,
              child: new Container(
                alignment: Alignment.topLeft,
                color: Colors.lightBlueAccent,
                width: 150,
                height: 150,
                padding: EdgeInsets.all(20.0),
                child: new Icon(Icons.android, color: Colors.red,),
              ),
            ),
          ),
          floatingActionButton: new FloatingActionButton(
            onPressed: null,
            tooltip: '这是一个提示',
            child: new Icon(Icons.add),
            backgroundColor: Colors.blue,
          ),
          drawer: new Drawer(
              child: new Column(
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                    accountName: new Text('泰达'),
                    accountEmail: new Text('tidusff2000@163.com'),
                    decoration:new BoxDecoration(image: new DecorationImage(image:new NetworkImage("http://t2.hddhhn.com/uploads/tu/201612/98/st93.png") )),

                  ),
                  new ListTile(leading: new Icon(Icons.refresh), title: new Text('刷新')),
                  new ListTile(leading: new Icon(Icons.help), title: new Text('帮助')),
                  new ListTile(leading: new Icon(Icons.chat), title: new Text('会话')),
                  new ListTile(leading: new Icon(Icons.settings), title: new Text('设置'))
                ],
              )
          ),
          bottomNavigationBar: new BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              new BottomNavigationBarItem(icon: new Icon(Icons.shopping_cart), title: new Text('购物车')),
              new BottomNavigationBarItem(icon: new Icon(Icons.mail), title: new Text('邮件')),
              new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('我的')),

            ],
            fixedColor: Colors.red,
            currentIndex: 1,
          ),
        )
    );
  }

}