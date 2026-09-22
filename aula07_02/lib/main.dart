import 'package:aula07_02/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final TextEditingController _x_controller = TextEditingController();
  final TextEditingController _y_controller = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: _title(),
        body: _body(),
      ),
    );
  }

  _title() {
    return AppBar(
      title: const Text("Flutter Calculator"),
      centerTitle: true,
    );
  }

  _body() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          _x_field(),
          _y_field(),
          _plus_button(),
          _sub_button(),
          _times_button(),
          _div_button()
        ],
      ),
    );
  }

  _x_field() {
    return TextField(
      controller: _x_controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Digite A",
        labelStyle: TextStyle(color: Colors.black12),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 16.0),
    );
  }

  _y_field() {
    return TextField(
      controller: _y_controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Digite B",
        labelStyle: TextStyle(color: Colors.black12),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 16.0),
    );
  }

  _plus_button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: () => dispatch_operation(Add()),
      child: Text(
        "+",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0
        ),
      ),
    );
  }

  _sub_button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: () => dispatch_operation(Sub()),
      child: Text(
        "-",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0
        ),
      ),
    );
  }

  _times_button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: () => dispatch_operation(Times()),
      child: Text(
        "*",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0
        ),
      ),
    );
  }

  _div_button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: () => dispatch_operation(Div()),
      child: Text(
        "/",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0
        ),
      ),
    );
  }

  dispatch_operation(Calculate calc) {
    print("result: ${calc.dispatch(double.parse(_x_controller.text), double.parse(_y_controller.text))}");
  }
}