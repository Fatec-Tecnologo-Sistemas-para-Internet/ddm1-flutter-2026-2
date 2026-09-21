import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final TextEditingController _controller = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  Scaffold(
        appBar: _title(),
        body: _body(),
      )
    );
  }

  _title () {
    return AppBar(
      title: const Text("Flutter text field"),
      centerTitle: true,
    );
  }

  _body () {
    return Container(
      width: double.infinity,
      color: Colors.white10,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _field(),
          _button(),
        ],
      ),
    );
  }

  _field() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Digite seu nome",
        labelStyle: TextStyle(color: Colors.red),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
      controller: _controller,
    );
  }

  _button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      onPressed: onClick,
      child: Text(
        "Clique aqui",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      )
    );
  }  

  onClick() {
    print("inserted text: ${_controller.text}");
  }
}