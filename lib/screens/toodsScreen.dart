import 'package:app_list_detail/data/todo.dart';
import 'package:app_list_detail/screens/detailScreen.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key, required this.todos});   
  final List<Todo> todos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }

  
}