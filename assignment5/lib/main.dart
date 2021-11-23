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
String text="";
class _State extends State<MyApp> {
  final GlobalKey<ScaffoldState> ScaffoldKey=GlobalKey<ScaffoldState>();
  void _onSubmitted(String _text)
  { setState(() {
    text=_text;
  });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
      appBar:  AppBar(
        title: const Text('Assigment5'),
      ),
      body:  Container(
        padding:  EdgeInsets.all(32.0),
        child:  Column(
          children:  <Widget>[

            TextField(
              onChanged: _onSubmitted
            ),
            ElevatedButton(
              onPressed: (){
                final snackBar=SnackBar(
                    content: Text(text),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
                child: Text("SnackBar"),

            ),


          ],
        ),

      ),
         );
  }
}
