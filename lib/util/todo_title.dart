import 'package:flutter/material.dart';

class TodoTitle extends StatelessWidget {
  const TodoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text('Make Tutorial'),
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}