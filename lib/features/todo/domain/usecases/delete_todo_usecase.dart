import 'package:dartz/dartz.dart';
import 'package:fluttertasks/features/todo/domain/repositories/todo_repo.dart';
import 'package:fluttertasks/shared/error/failures.dart';
import 'package:fluttertasks/shared/use_cases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeleteTodoUsecase implements UseCase<bool?, int> {
  final TodoRepo todoRepo;

  DeleteTodoUsecase({required this.todoRepo});

  @override
  Future<Either<Failure, bool?>> call(int param) async =>
      await todoRepo.deleteTodo(param);
}
