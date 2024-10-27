import 'package:flutter/material.dart';

class Rowtest extends StatelessWidget {
  const Rowtest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Row of icons",
            style: TextStyle(color: Colors.white),
            ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, color: Colors.blue, size: 40),
              Icon(Icons.favorite, color: Colors.red, size: 40),
              Icon(Icons.settings, color: Colors.grey, size: 40)
            ],
          ),
        ),
      ),
    );
  }
}