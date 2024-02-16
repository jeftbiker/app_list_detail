import 'package:app_list_detail/data/todo.dart';
import 'package:app_list_detail/screens/login_shred_preferences.dart';
import 'package:app_list_detail/screens/toodsScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    //final List<Todo> todos;
    return  MaterialApp(
      home: TodosScreen(
        todos: List.generate(
          20,
          (i) => Todo(
            'Todo $i',
            'A description of what needs to be done for Todo $i',
          ),
        ),
      ),    
    );
  }
}
