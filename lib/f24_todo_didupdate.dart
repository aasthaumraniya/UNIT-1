import 'package:flutter/material.dart';

void main() {
  runApp(const TodoParentApp());
}

class TodoItem {
  final String id;
  final String title;
  bool isCompleted;

  TodoItem({required this.id, required this.title, this.isCompleted = false});
}

class TodoParentApp extends StatefulWidget {
  const TodoParentApp({super.key});

  @override
  State<TodoParentApp> createState() => _TodoParentAppState();
}

class _TodoParentAppState extends State<TodoParentApp> {
  final List<TodoItem> _todoList = [
    TodoItem(id: '1', title: 'Complete Mobile App Assignment'),
    TodoItem(id: '2', title: 'Study Flutter Widget Lifecycle'),
    TodoItem(id: '3', title: 'Review Database Queries'),
  ];

  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _todoList.add(TodoItem(
          id: DateTime.now().toString(),
          title: _controller.text.trim(),
        ));
        _controller.clear();
      });
    }
  }

  void _toggleTodo(String id) {
    setState(() {
      final item = _todoList.firstWhere((t) => t.id == id);
      item.isCompleted = !item.isCompleted;
    });
  }

  void _removeTodo(String id) {
    setState(() {
      _todoList.removeWhere((t) => t.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('To-Do List (didUpdateWidget Demo)')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter new task name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton.filled(
                    onPressed: _addTodo,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: TodoListWidget(
                  todos: List.from(_todoList),
                  onToggle: _toggleTodo,
                  onRemove: _removeTodo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TodoListWidget extends StatefulWidget {
  final List<TodoItem> todos;
  final Function(String) onToggle;
  final Function(String) onRemove;

  const TodoListWidget({
    super.key,
    required this.todos,
    required this.onToggle,
    required this.onRemove,
  });

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  @override
  void didUpdateWidget(covariant TodoListWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.todos.length != widget.todos.length) {
      debugPrint('[didUpdateWidget] Todo list count updated: ${oldWidget.todos.length} -> ${widget.todos.length}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todos.length,
      itemBuilder: (context, index) {
        final todo = widget.todos[index];
        return Card(
          child: ListTile(
            leading: Checkbox(
              value: todo.isCompleted,
              onChanged: (_) => widget.onToggle(todo.id),
            ),
            title: Text(
              todo.title,
              style: TextStyle(
                decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => widget.onRemove(todo.id),
            ),
          ),
        );
      },
    );
  }
}
