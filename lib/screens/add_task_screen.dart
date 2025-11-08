import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  // Provider.of<TaskData>(context) uden listen: false kan forårsage uendelige
  // genopbygninger (endless rebuilds). Det er bedst at bruge const for
  // statiske widgets (for bedre ydeevne).
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  newTaskTitle er nullable (String?),
    // fordi brugeren måske ikke indtaster noget.
    String? newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
              ),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
