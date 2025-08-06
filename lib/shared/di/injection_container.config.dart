// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/dynamic_form/presentation/bloc/form_data_bloc.dart'
    as _i751;
import '../../features/ecommerce/presentation/bloc/ecommerce_bloc.dart'
    as _i410;
import '../../features/todo/data/database/todo_helper.dart' as _i254;
import '../../features/todo/data/datasources/todo_data_source.dart' as _i635;
import '../../features/todo/data/repositories/todo_repo_impl.dart' as _i513;
import '../../features/todo/domain/repositories/todo_repo.dart' as _i685;
import '../../features/todo/domain/usecases/delete_todo_usecase.dart' as _i137;
import '../../features/todo/domain/usecases/get_todo_list_usecase.dart'
    as _i372;
import '../../features/todo/domain/usecases/save_todo_usecase.dart' as _i489;
import '../../features/todo/presentation/bloc/todo_bloc.dart' as _i453;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i410.EcommerceBloc>(() => _i410.EcommerceBloc());
    gh.factory<_i254.TodoHelper>(() => _i254.TodoHelper());
    gh.factory<_i751.FormDataBloc>(() => _i751.FormDataBloc());
    gh.lazySingleton<_i635.TodoDataSource>(() => _i635.TodoDataSourceImpl());
    gh.lazySingleton<_i685.TodoRepo>(
      () => _i513.TodoRepoImpl(todoDataSource: gh<_i635.TodoDataSource>()),
    );
    gh.lazySingleton<_i137.DeleteTodoUsecase>(
      () => _i137.DeleteTodoUsecase(todoRepo: gh<_i685.TodoRepo>()),
    );
    gh.lazySingleton<_i372.GetTodoListUsecase>(
      () => _i372.GetTodoListUsecase(todoRepo: gh<_i685.TodoRepo>()),
    );
    gh.lazySingleton<_i489.SaveTodoUsecase>(
      () => _i489.SaveTodoUsecase(todoRepo: gh<_i685.TodoRepo>()),
    );
    gh.factory<_i453.TodoBloc>(
      () => _i453.TodoBloc(
        deleteUsecase: gh<_i137.DeleteTodoUsecase>(),
        listUsecase: gh<_i372.GetTodoListUsecase>(),
        saveUsecase: gh<_i489.SaveTodoUsecase>(),
      ),
    );
    return this;
  }
}
