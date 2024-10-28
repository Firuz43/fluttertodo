import 'package:flutter/material.dart';

class Selftest extends StatelessWidget {
  const Selftest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TEST",
          style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://via.placeholder.com/400x200',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Text("The blog post data"),
              Text('DATASTRIP'),
            ],
            Row(children: [
              Text("data")
            ],)
          ),
        ),
      ),
    );
  }
}