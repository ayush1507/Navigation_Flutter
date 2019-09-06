import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Navigation Flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to First Screen'),
          onPressed: (){
            Navigator
                .of(context)
                .push(MaterialPageRoute(builder: (_)=> FirstScreen()));
          },
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to Home Screen'),
          onPressed: (){
            Navigator
                .of(context)
                .pop(MaterialPageRoute(builder: (_)=> HomePage()));
          },
        ),
      ),
    );
  }
}
