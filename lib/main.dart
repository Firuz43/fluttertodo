import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/database/habbit_databse.dart';
import 'package:todoapp/pages/homepage.dart';
import 'package:todoapp/theme/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  //added

  //initialize database
  await HabbitDatabse.initialize();
  await HabbitDatabse().saveFirstLauncDate();

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(), 
      )
  );
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
      // theme: ThemeData(primarySwatch: Colors.yellow),
      // home: MyTest(),
      // home: Emailtest(),
      // home: Rowtest(),
      // home: Productcard(),
      // home: Articles(),
      // home: Blogpost(),
      // home: Selftest(),
      // home: Chatbubble(),
      home: const Homepage(),
      // theme: Provider.of<ThemeProvider>(context).themeData,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
