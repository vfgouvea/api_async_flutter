import 'package:api_async_flutter/app/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

main() {

  final controller = HomeController();

  test('deve trazer uma lista de Todo e checar 1 id',() async {
    expect(List.empty(),controller.todos);
    await controller.start();
    expect(1,controller.todos.first.id);
  });

  test('estado start antes de rodar e success depois',() async {
    expect(controller.state.value,HomeState.start);
    await controller.start();
    expect(controller.state.value,HomeState.success);
  });

}
