import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../entities/todo/todo.dart';
import '../../repositories/todo/todo_repository.dart';
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
