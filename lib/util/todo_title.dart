import 'package:flutter/material.dart';

class TodoTitle extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TodoTitle({
    super.key,
    required this.taskName,
    required this.onChanged,
    required this.taskCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),

        child: Row(
          children: [

            //CheckBox
            Checkbox(value: value, onChanged: onChanged),
            
            //Task name
            Text('Make Tutorial'),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12)
          ),
      ),
    );
  }
}