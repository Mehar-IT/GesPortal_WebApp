import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Gesportal'),
        ),
        body: Container(
            child: WebView(
          initialUrl: "http://www.gesportal.net/",
          javascriptMode: JavascriptMode.unrestricted,
        )),
      ),
    );
  }
}
