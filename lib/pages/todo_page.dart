import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  //text editing controller to get access to what user types.
  TextEditingController myController = TextEditingController();


  //greeting message variable
  String greetingMessage = "";

  //getUser method
  void getUser() {
    setState(() {
      greetingMessage = "Hello " + myController.text;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name...",
                  ),
              ),
          
              //button
              ElevatedButton(onPressed: getUser, child: Text('Tap'),)
            ],
          ),
        ),
      ),
    );
  }
}