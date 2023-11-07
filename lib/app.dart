import 'package:flutter/material.dart';
import 'package:task_managet/ui/screens/splash_screen.dart';



class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager App Practice for CRUD',
      home: SplashScren(),
      theme: ThemeData(
          brightness: Brightness.light
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark
      ),
      themeMode: ThemeMode.light,
    );
  }
}


