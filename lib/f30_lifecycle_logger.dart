import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class LifecycleLoggerWrapper extends StatefulWidget {
  final Widget child;
  const LifecycleLoggerWrapper({super.key, required this.child});

  @override
  State<LifecycleLoggerWrapper> createState() => _LifecycleLoggerWrapperState();
}

class _LifecycleLoggerWrapperState extends State<LifecycleLoggerWrapper> {
  void _log(String event) {
    debugPrint('[LifecycleLogger] ${DateTime.now().toIso8601String()} -> Event: $event');
  }

  @override
  void initState() {
    super.initState();
    _log('initState()');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _log('didChangeDependencies()');
  }

  @override
  void didUpdateWidget(covariant LifecycleLoggerWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    _log('didUpdateWidget()');
  }

  @override
  void deactivate() {
    _log('deactivate()');
    super.deactivate();
  }

  @override
  void dispose() {
    _log('dispose()');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _log('build()');
    return widget.child;
  }
}

class DemoCounter extends StatefulWidget {
  const DemoCounter({super.key});

  @override
  State<DemoCounter> createState() => _DemoCounterState();
}

class _DemoCounterState extends State<DemoCounter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Counter Child Widget', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Text('Count: $_count', style: const TextStyle(fontSize: 32)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => setState(() => _count++),
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget Lifecycle Logger Utility')),
        body: const Center(
          child: LifecycleLoggerWrapper(
            child: DemoCounter(),
          ),
        ),
      ),
    );
  }
}
