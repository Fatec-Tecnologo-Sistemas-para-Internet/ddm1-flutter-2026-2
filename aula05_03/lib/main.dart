import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white70),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Child Components"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "This is a child Text Component",
              style: TextStyle(
                fontSize: 30,
                color: Colors.pink,
              ),
            ),
          ),
        )
      ),
    );
  }
}