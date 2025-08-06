import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:fluttertasks/shared/notification_service.dart';

class AddEditTodoScreen extends StatefulWidget {
  final TodoDataModel? todo;

  const AddEditTodoScreen({super.key, this.todo});

  @override
  State<AddEditTodoScreen> createState() => _AddEditTodoScreenState();
}

class _AddEditTodoScreenState extends State<AddEditTodoScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;
  DateTime? _dueDate;

  @override
  void initState() {
    super.initState();
    if (widget.todo != null) {
      _title = widget.todo!.title;
      _description = widget.todo!.description;
      _dueDate = DateTime.parse(widget.todo!.dueDate);
    } else {
      _title = '';
      _description = '';
    }
  }

  Future<void> _pickDateTime() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _dueDate ?? DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2100),
    );
    if (date != null) {
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_dueDate ?? DateTime.now()),
      );
      if (time != null) {
        setState(() {
          _dueDate = DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
        });
      }
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final todo = TodoDataModel(
        id: widget.todo?.id,
        title: _title,
        description: _description,
        dueDate: _dueDate?.toIso8601String() ?? "",
      );

      context.read<TodoBloc>().add(TodoEvent.saveTodo(todo));
      if (_dueDate != null) NotificationService().schedule(todo);
      showDialog(
        context: context,
        builder:
            (_) => AlertDialog(
          title: Text('Task Saved'),
          content: Text('Your task has been saved successfully.'),
          actions: [
            TextButton(
              onPressed:
                  () =>
              Navigator.of(context)
                ..pop() // close dialog
                ..pop(), // go back
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo == null ? 'Add Task' : 'Edit Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _title,
                decoration: InputDecoration(labelText: 'Title'),
                onSaved: (val) => _title = val!,
                validator:
                    (val) =>
                        val == null || val.isEmpty ? 'Enter a title' : null,
              ),
              TextFormField(
                initialValue: _description,
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (val) => _description = val!,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _dueDate != null
                          ? 'Due: ${DateTime.parse(_dueDate!.toIso8601String())}'
                          : 'No due date',
                    ),
                  ),
                  TextButton(
                    onPressed: _pickDateTime,
                    child: Text('Pick Date & Time'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _submit, child: Text('Save Task')),
            ],
          ),
        ),
      ),
    );
  }
}
