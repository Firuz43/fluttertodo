import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 130,
        child: Column(
          children: [
            //Get user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Write new task..."
                ),
            ),

            //buttons save -> cancel
            Row(
              children: [
                //save button

                //cancel button
                
            ],)
          ],
        ),
      ),
    );
  }
}