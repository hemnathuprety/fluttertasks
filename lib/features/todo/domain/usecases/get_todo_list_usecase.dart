import 'package:dartz/dartz.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/features/todo/domain/repositories/todo_repo.dart';
import 'package:fluttertasks/shared/error/failures.dart';
import 'package:fluttertasks/shared/use_cases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTodoListUsecase implements UseCase<List<TodoDataModel>, String> {
  final TodoRepo todoRepo;

  GetTodoListUsecase({
    required this.todoRepo,
  });

  @override
  Future<Either<Failure, List<TodoDataModel>>> call(String param) async =>
      await todoRepo.getTodoList(param);
}
