import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expanded widget'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Row(
        children: <Widget> [
          Expanded(child: Image.asset('assets/guy1.jpeg')),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pink,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.green,
            child: Text('2'),
          ),
          ),
          Expanded(
              flex: 1,
              child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.yellow,
            child: Text('3'),
          ))
        ],
      ),
    );
  }
}


