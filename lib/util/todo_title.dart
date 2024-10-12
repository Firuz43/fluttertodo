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
    return  Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(24),

        child: Row(
          children: [
            
            //CheckBox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            //Task name
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none
                ),
              ),
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