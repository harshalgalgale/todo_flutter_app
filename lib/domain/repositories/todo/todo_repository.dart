import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import '../../entities/todo/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, Todo>> getTodo(int id);

  Future<Either<Failure, List<Todo>>> getAllTodo();

  Future<Either<Failure, Todo>> addTodo(String task);
}
