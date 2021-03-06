import 'package:api_async_flutter/app/services/todo_service.dart';
import 'package:flutter_test/flutter_test.dart';

main() {

  final todo_service = TodoService();

  test('deve trazer uma lista de Todo e checar 1 id',() async {
    final todos = await todo_service.fetchTodos();
    expect(1,todos.first.id);
  });

}
