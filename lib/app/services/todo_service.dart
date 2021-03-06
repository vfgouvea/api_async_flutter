import 'package:api_async_flutter/app/models/todo_model.dart';
import 'package:dio/dio.dart';

class TodoService {

  final dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  TodoService([Dio client]) : dio = client ?? Dio();

  Future<List<Todo>> fetchTodos() async {
    final response = await dio.get(url);
    final lista = response.data as List;
    return lista.map((e) => Todo.fromJson(e)).toList();
  }

}