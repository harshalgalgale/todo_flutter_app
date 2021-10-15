import '../../../data/models/todo/todo_model.dart';
import 'package:flutter/material.dart';

class ViewTodoPage extends StatelessWidget {
  static const routeName = '/ViewTodoPage';

  final TodoModel todoModel;

  const ViewTodoPage({Key? key, required this.todoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SelectableText(
                todoModel.getTaskFullBody(),
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ViewTodoPageArguments {
  final TodoModel todoModel;

  ViewTodoPageArguments({required this.todoModel});
}
