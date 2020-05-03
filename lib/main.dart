import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task_data.dart';
import 'screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
//      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
      create: (context) => TaskData(),
    );
  }
}