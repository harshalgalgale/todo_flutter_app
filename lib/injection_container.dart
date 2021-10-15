import 'domain/usecases/setting/change_app_theme_mode.dart';
import 'data/datasources/todo/todo_local_data_source.dart';
import 'data/respositories/todo/todo_repository_impl.dart';
import 'domain/repositories/todo/todo_repository.dart';
import 'domain/usecases/todo/add_todo.dart';
import 'domain/usecases/todo/get_all_todo.dart';
import 'domain/usecases/todo/get_todo.dart';
import 'presentation/blocs/todo/todo_bloc.dart';
import 'presentation/blocs/todo_form/todo_form_bloc.dart';
import 'package:get_it/get_it.dart';

import 'data/datasources/setting/setting_local_data_source.dart';
import 'data/respositories/setting/setting_repository_impl.dart';
import 'domain/repositories/setting/setting_repository.dart';
import 'domain/usecases/setting/get_setting.dart';
import 'presentation/blocs/setting/setting_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc

  sl.registerFactory<SettingBloc>(
    () => SettingBloc(getSetting: sl(), changeAppThemeMode: sl()),
  );
  sl.registerFactory<TodoFormBloc>(
    () => TodoFormBloc(addTodo: sl()),
  );
  sl.registerFactory<TodoBloc>(
    () => TodoBloc(
      getAllTodo: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetSetting(sl()));
  sl.registerLazySingleton(() => ChangeAppThemeMode(sl()));
  sl.registerLazySingleton(() => GetTodo(sl()));
  sl.registerLazySingleton(() => GetAllTodo(sl()));
  sl.registerLazySingleton(() => AddTodo(sl()));

  // Repository
  sl.registerLazySingleton<SettingRepository>(
    () => SettingRepositoryImpl(settingLocalDataSource: sl()),
  );
  sl.registerLazySingleton<TodoRepository>(
    () => TodoRepositoryImpl(todoLocalDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<SettingLocalDataSource>(
      () => SettingLocalDataSourceImpl());

  sl.registerLazySingleton<TodoLocalDataSource>(
      () => TodoLocalDataSourceImpl());

  //! Core

  //! External
}
