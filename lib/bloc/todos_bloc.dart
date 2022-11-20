import 'package:bloc/bloc.dart';
import 'package:bloc_todos_app/models/todo.dart';
import 'package:equatable/equatable.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosLoaded(todoList: const <Todo>[])) {
// we declared an initial state by using TodosLoaded state with empty todosList
    on<AddTodo>((event, emit) {
      if (state is TodosLoaded) {
        final prevState = this.state as TodosLoaded;
        final newState = TodosLoaded(
            todoList: List.from(prevState.todoList)..add(event.todo));
        emit(newState);
      }
    });
    
  }
}
