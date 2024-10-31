import 'package:flutter/material.dart';

class Rowtest extends StatelessWidget {
  const Rowtest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Testing",
            style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.yellow,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("data"),
                    Text("TEHER"),
                    Text("TEHER"),
                    Text("TEHER"),
                    Text("TEHER"),
                    Text("TEHER"),
                    Row(
                      children: [
                        Text("ASDDDQWE"),
                        SizedBox(width: 10),
                        Text("SADQWEE"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("FOREVER IN YOUR DREAMS"),
                        SizedBox(height: 10,),
                        Text("SSSQQQQQQQQQQ"),
                        Image.network(
                          'https://via.placeholder.com/400x200',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20,),
                        Text("Some random")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}