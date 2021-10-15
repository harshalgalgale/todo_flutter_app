import '../../presentation/pages/setting/setting_page.dart';
import '../../presentation/pages/todo/add_todo_page.dart';
import '../../presentation/pages/todo/todo_home_page.dart';
import '../../presentation/pages/todo/view_todo_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AddTodoPage.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return AddTodoPage();
        },
      );
    }

    if (settings.name == TodoHomePage.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return TodoHomePage();
        },
      );
    }

    if (settings.name == SettingPage.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return SettingPage();
        },
      );
    }

    if (settings.name == ViewTodoPage.routeName) {
      final viewTodoPageArguments = settings.arguments;
      if (viewTodoPageArguments == null) {
        assert(false, 'Need to implement ${settings.arguments}');
        return null;
      }
      return MaterialPageRoute(
        builder: (context) {
          return ViewTodoPage(
            key: ValueKey(
                (viewTodoPageArguments as ViewTodoPageArguments).todoModel.id),
            todoModel: viewTodoPageArguments.todoModel,
          );
        },
      );
    }

    assert(false, 'Need to implement ${settings.name}');
    return null;
  }
}
