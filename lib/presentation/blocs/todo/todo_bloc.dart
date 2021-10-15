import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/usecases/todo/get_all_todo.dart';
import '../../../domain/entities/todo/todo.dart';
import 'package:equatable/equatable.dart';

part 'todo_event.dart';

part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc({required this.getAllTodo}) : super(TodoInitialState());

  final GetAllTodo getAllTodo;

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is GetTodoListEvent) {
      print("GetTodoListEvent : called");
      yield TodoLoadingState();
      final todoListFailedOrSuccess = await getAllTodo(NoParams());
      yield todoListFailedOrSuccess.fold(
        (l) => TodoLoadFailedState(),
        (r) => TodoLoadSuccessState(todoList: r),
      );
    }
  }

  @override
  void onTransition(Transition<TodoEvent, TodoState> transition) {
    print("TodoBloc : $transition");
    super.onTransition(transition);
  }
}
