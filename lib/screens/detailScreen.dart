import 'package:app_list_detail/data/todo.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
    const DetailScreen({super.key, required this.todo});
      final Todo todo;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );  
  }
  
}