import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:fluttertasks/features/todo/presentation/screen/add_edit_todo_screen.dart';

@RoutePage()
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  void initState() {
    super.initState();
    context.read<TodoBloc>().add(TodoEvent.getTodoList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My To-Do List'),
        actions: [
          FilledButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddEditTodoScreen(),
              ).whenComplete(() {
                //context.read<TodoBloc>().add(TodoEvent.getTodoList());
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return Container();
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
            error: () {
              return Center(child: Text('No tasks yet.'));
            },
            loaded: (List<TodoDataModel> list) {
              log(state.toString());
              if (list.isEmpty) {
                return Center(child: Text('No tasks yet.'));
              }
              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final todo = list[index];
                  return ListTile(
                    title: Text(todo.title),
                    subtitle:
                        todo.dueDate != null
                            ? Text('Due: ${DateTime.parse(todo.dueDate)}')
                            : null,
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        context.read<TodoBloc>().add(
                          TodoEvent.deleteTodo(todo.id ?? 0),
                        );
                      },
                    ),
                    onTap: () {},
                  );
                },
              );
            },
          );
          return Center(child: Text('No tasks yet.'));
        },
      ),
    );
  }
}
