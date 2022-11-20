part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class AddTodo extends TodosEvent {
  final Todo todo;

  AddTodo({
    required this.todo,
  });

  @override
  List<Object> get props => [todo];
}