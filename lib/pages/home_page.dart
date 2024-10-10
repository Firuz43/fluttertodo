import 'package:flutter/material.dart';
import 'package:todoapp/util/todo_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        children: [
          TodoTitle(
            taskName: 'Make Tutorial',
            taskCompleted: true,
            onChanged: (p0) {
              
            },
          ),
          TodoTitle(
            taskName: 'Make Excercise',
            taskCompleted: false,
            onChanged: (p0) {
          },
          ),
        ],
      ),
    );
  }
}