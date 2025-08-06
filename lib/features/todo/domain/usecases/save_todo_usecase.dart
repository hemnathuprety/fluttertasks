import 'package:dartz/dartz.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/features/todo/domain/repositories/todo_repo.dart';
import 'package:fluttertasks/shared/error/failures.dart';
import 'package:fluttertasks/shared/use_cases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveTodoUsecase implements UseCase<TodoDataModel?, dynamic> {
  final TodoRepo todoRepo;

  SaveTodoUsecase({required this.todoRepo});

  @override
  Future<Either<Failure, TodoDataModel?>> call(dynamic param) async =>
      await todoRepo.saveTodo(param);
}
