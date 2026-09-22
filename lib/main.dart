import 'package:flutter/material.dart';
import 'package:mynewapp/page2.dart';
import 'package:mynewapp/page4.dart';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    )
  );
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my first Flutter App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}

