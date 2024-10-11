import 'package:flutter/material.dart';
import 'package:todoapp/util/dialog_box.dart';
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

  //checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  //create a new task
  void createNewTask() {
    showDialog(
      context: context, 
      builder: (context) {
        return DialogBox();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        createNewTask(); //for creating new task
      },
       child: Icon(Icons.add), 
      backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTitle(
            taskName: todoList[index][0], 
            taskCompleted: todoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}