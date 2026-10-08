import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifecycleDemoParent(),
    );
  }
}

class LifecycleDemoParent extends StatefulWidget {
  const LifecycleDemoParent({super.key});

  @override
  State<LifecycleDemoParent> createState() => _LifecycleDemoParentState();
}

class _LifecycleDemoParentState extends State<LifecycleDemoParent> {
  bool _showChild = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget Lifecycle Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_showChild) const LifecycleChildWidget(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showChild = !_showChild;
                });
              },
              child: Text(_showChild ? 'Dispose Child Widget' : 'Mount Child Widget'),
            ),
          ],
        ),
      ),
    );
  }
}

class LifecycleChildWidget extends StatefulWidget {
  const LifecycleChildWidget({super.key});

  @override
  State<LifecycleChildWidget> createState() => _LifecycleChildWidgetState();
}

class _LifecycleChildWidgetState extends State<LifecycleChildWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('[Lifecycle] initState() called');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('[Lifecycle] didChangeDependencies() called');
  }

  @override
  void didUpdateWidget(covariant LifecycleChildWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('[Lifecycle] didUpdateWidget() called');
  }

  @override
  void deactivate() {
    debugPrint('[Lifecycle] deactivate() called');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint('[Lifecycle] dispose() called');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('[Lifecycle] build() called');
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue),
      ),
      child: Column(
        children: [
          const Text('Lifecycle Child Widget', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text('Counter: $_counter', style: const TextStyle(fontSize: 24)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: const Text('Update State (Rebuild)'),
          ),
        ],
      ),
    );
  }
}
