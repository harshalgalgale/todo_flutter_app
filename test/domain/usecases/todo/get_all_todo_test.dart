import 'package:dartz/dartz.dart';
import 'package:done_it/core/usecases/usecase.dart';
import 'package:done_it/domain/entities/todo/todo.dart';
import 'package:done_it/domain/repositories/todo/todo_repository.dart';
import 'package:done_it/domain/usecases/todo/get_all_todo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'add_todo_test.mocks.dart';

@GenerateMocks([TodoRepository])
void main() {
  late MockTodoRepository mockTodoRepository;
  late GetAllTodo getAllTodo;
  setUp(() {
    mockTodoRepository = MockTodoRepository();
    getAllTodo = GetAllTodo(mockTodoRepository);
  });

  final List<Todo> tAllTodo = [
    Todo(
      task: 'task1',
      id: 1,
    ),
    Todo(
      task: 'task2',
      id: 2,
    )
  ];

  test("should get all todo from the repository", () async {
    // arrange
    when(mockTodoRepository.getAllTodo())
        .thenAnswer((_) async => Right(tAllTodo));
    // act
    final result = await getAllTodo(NoParams());
    // assert
    expect(result, Right(tAllTodo));
    verify(mockTodoRepository.getAllTodo());
    verifyNoMoreInteractions(mockTodoRepository);
  });
}
