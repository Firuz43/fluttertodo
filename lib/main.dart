import 'package:flutter/material.dart';
import 'package:todoapp/pages/home_page.dart';
import 'package:todoapp/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application....
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: ToDoPage(),
    // ); you have 

    return MaterialApp(
      home: HomePage(), //homepage
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
