import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = 'Hello world';

  void _onPressed() {
    setState(() => _value = 'Bryan Cairns');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:  Text('Name here'),
      ),
      body:  Container(
          padding:  EdgeInsets.all(32.0),
          child:  Center(
            child:  Column(
              children: <Widget>[
                 Text(_value),
                 RaisedButton(onPressed: _onPressed, child: new Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}