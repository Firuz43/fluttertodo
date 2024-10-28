import 'package:flutter/material.dart';
import 'package:todoapp/pages/blogpost.dart';
import 'package:todoapp/pages/selftest.dart';

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
      // home: HomePage(), //homepage
      // theme: ThemeData(primarySwatch: Colors.yellow),
      // home: MyTest(),
      // home: Emailtest(),
      // home: Rowtest(),
      // home: Productcard(),
      // home: Articles(),
      // home: Blogpost(),
      home: Selftest(),
    );
  }
}
