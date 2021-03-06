import 'package:api_async_flutter/app/models/todo_model.dart';
import 'package:api_async_flutter/app/services/todo_service.dart';
import 'package:flutter/cupertino.dart';

class HomeController {

  List<Todo> todos = [];
  final TodoService _service;
  final state = ValueNotifier<HomeState>(HomeState.start);

  HomeController([TodoService service]) : _service = service ?? TodoService();

  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await _service.fetchTodos();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }

}

enum HomeState { start, loading, success, error }
