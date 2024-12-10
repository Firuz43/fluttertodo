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
        padding: const EdgeInsets.all(8.0),
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
              Text('DATASTRIP'),//
              Row(//
                children: [
                  Icon(Icons.email, color: Colors.red,),
                  SizedBox(width: 4),
                  Text('firuzchamarov@gmail.com'),
                  SizedBox(width: 10),
                  Icon(Icons.home, color: Colors.green),
                  Text('Home')
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 300,
                    height: 200,
                    child: Card(
                      child: Text('data'),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Container(
                      width: 300,
                      height: 200,
                      color: Colors.blue,
                      child: Row(           
                        mainAxisAlignment: MainAxisAlignment.spaceAround,      
                        children: [
                          Text("DATA"),
                          Text("TGHEREE"),
                          Text("QWERTYY")//
                        ],
                      ),
                      
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}