import 'package:flutter/material.dart';
import 'package:todoapp/util/todo_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //List of todo tasks
  List todoList = [
    ["Make Tutorial", false],
    ["Do Excercise", false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTitle(
            taskName: taskName, 
            onChanged: onChanged, 
            taskCompleted: taskCompleted
            );
        },
      ),
    );
  }
}