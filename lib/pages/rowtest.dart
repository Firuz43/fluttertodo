import 'package:flutter/material.dart';

class Rowtest extends StatelessWidget {
  const Rowtest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Testing",
            style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.yellow,
          height: 200,
          width: 200,
          child: Card(
            child: Text("DATA"),
          ),
        ),
      ),
    );
  }
}