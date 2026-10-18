import 'package:flutter/material.dart';
import 'edit_task_screen.dart';
import 'models/task_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do App',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF1F3FC),
      ),
      home: EditTaskScreen(
        task: TaskModel(
          title: 'Go to the gym',
          notes: 'Morning workout, 7 AM.',
          priority: 'Medium',
          date: '2025-05-03',
        ),
      ),
    );
  }
}