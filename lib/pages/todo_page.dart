import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  //text editing controller to get access to what user types.
  TextEditingController myController = TextEditingController();

  //getUser method
  void getUser() {
    print(myController.text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
            ),

            //button
            ElevatedButton(onPressed: getUser, child: Text('Tap'),)
          ],
        ),
      ),
    );
  }
}