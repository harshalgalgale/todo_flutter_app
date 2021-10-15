import 'package:dartz/dartz.dart';
import 'package:done_it/core/error/failures.dart';
import 'package:done_it/core/usecases/usecase.dart';
import 'package:done_it/domain/entities/todo/todo.dart';
import 'package:done_it/domain/repositories/todo/todo_repository.dart';
import 'package:equatable/equatable.dart';

class GetTodo implements UseCase<Todo, Params> {
  final TodoRepository todoRepository;

  GetTodo(this.todoRepository);

  @override
  Future<Either<Failure, Todo>> call(Params params) async {
    return await todoRepository.getTodo(params.id);
  }
}

class Params extends Equatable {
  final int id;

  Params({required this.id});

  @override
  List<Object> get props => [id];
}
