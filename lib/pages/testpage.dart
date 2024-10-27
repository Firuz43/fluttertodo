import 'package:flutter/material.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lessons",
          style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 5),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://www.example.com/image.jpg'
                  ),
              ),
              SizedBox(height: 8),
              Text('John Doe', style: TextStyle(fontSize: 24),),
              SizedBox(height: 4),
              Text(
                'Mobile Developer',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  Icon(Icons.phone, color: Colors.blue),
                  Icon(Icons.location_on, color: Colors.blue),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}