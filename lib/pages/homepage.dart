import 'package:bloc_todos_app/bloc/todos_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_todo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: BlocBuilder<TodosBloc, TodosState>(
          builder: (context, state) {
            // read the state attributes here
            if (state is TodosLoaded) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  var todo = state.todoList.elementAt(index);
                  return Text('${index + 1}. ${todo.title}');
                },
                itemCount: state.todoList.length,
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.black,
                  height: 13,
                  thickness: 1,
                ),
              );
            } else {
              return const Center(
                child: Text('error'),
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTodoPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
