import 'package:flutter/material.dart';

class Chatbubble extends StatelessWidget {
  const Chatbubble({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Chat Bubble",
            style: TextStyle(color: Colors.white),
            ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ChattingBubble(
                text: "Hey! How are you?", 
                isMe: false
              ),
              ChattingBubble(
                text: "I'm good, thanks", 
                isMe: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}


class ChattingBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const ChattingBubble({required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 5),
        constraints: BoxConstraints(maxWidth: 200),
        decoration: BoxDecoration(
          color: isMe ? Colors.blueAccent : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isMe ? 12 : 0),
            topRight: 
          )
        ),
      ),
    );
  }
}