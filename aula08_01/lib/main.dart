import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key }) : super(key: key);


  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();

  String displayName = "We'll show your name here";
  
  void _displayName() {
    setState(() {
      String name = nameController.text;
      displayName = "Your name is: $name";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter - Stateful"),
          centerTitle: true,
        ),
        body: _body(),
      )
    );
  }

  _body() {
    return Container(
      width: double.infinity,
      color: Colors.white38,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _field(),
          _button(),
          _text(),
        ],
      ),
    );
  }

  _field() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Type your name",
        labelStyle: TextStyle(color: Colors.red),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 16.0),
      controller: nameController,
    );
  }

  _button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      onPressed: _displayName,
      child: Text(
        "Type your name",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0
        ),
      )
    );
  }

  _text() {
    return Text(displayName);
  }
}
