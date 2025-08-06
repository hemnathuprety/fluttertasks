import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/features/todo/domain/usecases/delete_todo_usecase.dart';
import 'package:fluttertasks/features/todo/domain/usecases/get_todo_list_usecase.dart';
import 'package:fluttertasks/features/todo/domain/usecases/save_todo_usecase.dart';
import 'package:fluttertasks/shared/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'todo_bloc.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final SaveTodoUsecase saveUsecase;
  final DeleteTodoUsecase deleteUsecase;
  final GetTodoListUsecase listUsecase;

  TodoBloc({
    required this.deleteUsecase,
    required this.listUsecase,
    required this.saveUsecase,
  }) : super(const TodoState.initial()) {
    on<TodoEvent>((event, emit) async {
      await event.when(
        started: () {
          return null;
        },
        saveTodo: (TodoDataModel todoModel) async {
          try {
            emit(TodoState.loading());

            final Either<Failure, TodoDataModel?> response = await saveUsecase
                .call(todoModel);

            response.fold(
              (Failure l) {
                final BaseResponseFailure errorMessage =
                    l as BaseResponseFailure;

                emit(TodoState.error());
              },
              (TodoDataModel? data) async {
                if (data?.id != null) {
                  add(TodoEvent.getTodoList());
                }
              },
            );
          } catch (e) {
            emit(TodoState.error());
          }
        },
        deleteTodo: (int id) async {
          try {
            emit(TodoState.loading());

            final Either<Failure, bool?> response = await deleteUsecase.call(
              id,
            );

            response.fold(
              (Failure l) {
                final BaseResponseFailure errorMessage =
                    l as BaseResponseFailure;

                emit(TodoState.error());
              },
              (bool? data) async {
                add(TodoEvent.getTodoList());
              },
            );
          } catch (e) {
            emit(TodoState.error());
          }
        },
        getTodoList: () async {
          try {
            emit(TodoState.loading());

            final Either<Failure, List<TodoDataModel>> response =
                await listUsecase.call("list");

            response.fold(
              (Failure l) {
                final BaseResponseFailure errorMessage =
                    l as BaseResponseFailure;

                emit(TodoState.error());
              },
              (List<TodoDataModel> data) async {
                log( "${data.length}");
                emit(TodoState.loaded(todoList: data));
              },
            );
          } catch (e) {
            emit(TodoState.error());
          }
        },
      );
    });
  }
}
