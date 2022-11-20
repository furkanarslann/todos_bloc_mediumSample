part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class TodosLoaded extends TodosState {
  final List<Todo> todoList;

  TodosLoaded({required this.todoList});

  @override
  List<Object> get props => [todoList];
}
