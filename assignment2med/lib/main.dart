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
  int currentSteps=0;
  String name="";
  String age="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Live template'),
      ),
      body:  Stepper(
          steps: _mySteps(),
        currentStep: currentSteps,
        onStepTapped:(steps){
            setState(() {
              currentSteps=steps;
            });

        },
        onStepContinue:(){
            setState(() {
              if (currentSteps < _mySteps().length - 1) {
                currentSteps += 1;
              }
              else
                print("done");
            });
        },
        onStepCancel: (){
            setState(() {
              if(currentSteps>0) currentSteps-=1;
              else currentSteps=0;

            });

        },
      ),
    );
  }
  List<Step> _mySteps(){
    List<Step> _steps=[
      Step(
          title: Text("UserName"),
          content: TextField(
            onChanged: (text){
              name=text;
            },
          ),
          isActive: currentSteps>=0),
      Step(
          title: Text("Age"),
          content: TextField(
            onChanged: (text){
              age=text;
            },
          ),
          isActive: currentSteps>=1),
      Step(
          title: Text("Confirm Details"),
          content: Column(children: [Text(name),Text(age)],),
          isActive: currentSteps>=2),
    ];
    return _steps;
  }
}
