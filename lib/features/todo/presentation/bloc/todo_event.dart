part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.started() = _Started;
  const factory TodoEvent.saveTodo(TodoDataModel todoModel ) = _SaveTodo;
  const factory TodoEvent.deleteTodo(int id) = _DeleteTodo;
  const factory TodoEvent.getTodoList() = _GetTodoList;
}
