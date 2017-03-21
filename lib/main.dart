import 'dart:ui' as ui show window;

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
    Navigator.defaultRouteName: (context) => new MyHomePage(title: 'Home Page')
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter App',
      debugShowMaterialGrid: false,
      routes: _routes,
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting
        // the app, try changing the primarySwatch below to Colors.green
        // and then invoke "hot reload" (press "r" in the console where
        // you ran "flutter run", or press Run > Hot Reload App in IntelliJ).
        // Notice that the counter didn't reset back to zero -- the application
        // is not restarted.
        primarySwatch: Colors.cyan,
      ),
      // 使用 _routes 中定义的 默认路由来替代 home
      //home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful,
  // meaning that it has a State object (defined below) that contains
  // fields that affect how it looks.

  // This class is the configuration for the state. It holds the
  // values (in this case the title) provided by the parent (in this
  // case the App widget) and used by the build method of the State.
  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If we changed _counter without calling
      // setState(), then the build method would not be called again,
      // and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget body = new Center(
      child: new Padding(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(bottom: 8.0),
                decoration:
                    new BoxDecoration(backgroundColor: Colors.grey[200]),
                child: new Image.network(
                    'https://flutter.io/images/flutter-mark-square-100.png'),
                margin: new EdgeInsets.only(bottom: 8.0),
                transform: new Matrix4.rotationZ(100.0),
                constraints: new BoxConstraints(minHeight: 150.0),
              ),
              new Text(
                'Flutter is a mobile app SDK for building high-performance, high-fidelity, apps for iOS and Android, from a single codebase.',
                style: new TextStyle(fontSize: 20.0, color: Colors.teal[500]),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textAlign: TextAlign.left,
              ),
              new Padding(
                padding: new EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Flutter 是一个用一套代码就可以构建高性能安卓和苹果应用的移动应用 SDK。 ',
                  style: new TextStyle(fontSize: 28.0),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
              new RichText(
                text: new TextSpan(
                  text: 'Button tapped ',
                  style: new TextStyle(
                      inherit: true, fontSize: 32.0, color: Colors.black),
                  children: <TextSpan>[
                    new TextSpan(
                        text: '$_counter',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[500])),
                    new TextSpan(text: ' time'),
                    new TextSpan(
                        text: _counter == 1 ? '' : 's',
                        style: new TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.cyan[500])),
                    new TextSpan(text: '.'),
                  ],
                ),
              ),
            ],
          )),
    );

    // This method is rerun every time setState is called, for instance
    // as done by the _incrementCounter method above.
    // The Flutter framework has been optimized to make rerunning
    // build methods fast, so that you can just rebuild anything that
    // needs updating rather than having to individually change
    // instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(config.title),
        leading: new Icon(Icons.home),
        backgroundColor: Colors.amber[500],
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add_alarm),
              tooltip: 'Add Alarm',
              onPressed: () {
                // do nothing
              }),
          new PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                    new PopupMenuItem<String>(
                        value: "price", child: new Text('Sort by price')),
                    new PopupMenuItem<String>(
                        value: "time", child: new Text('Sort by time')),
                  ],
              onSelected: (String action) {
                switch (action) {
                  case "price":
                    // do nothing
                    break;
                  case "time":
                    // do nothing
                    break;
                }
              })
        ],
        bottom: new TabBar(
          isScrollable: true,
          tabs: <Widget>[
            new Tab(text: "Tabs 1"),
            new Tab(text: "Tabs 2"),
            new Tab(text: "Tabs 3"),
            new Tab(text: "Tabs 4"),
            new Tab(text: "Tabs 5"),
            new Tab(text: "Tabs 6"),
          ],
        ),
      ),
      body: body,
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
