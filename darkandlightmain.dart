import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.apple,
                  size: 150, color: darkMode ? Colors.white : Colors.black),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[800] : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode ? Colors.grey[900] : Colors.grey[500],
                        offset: Offset(5.0, 5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: darkMode ? Colors.grey[800] : Colors.white,
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
