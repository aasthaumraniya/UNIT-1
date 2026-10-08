import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scaffold & FAB Screen'),
          backgroundColor: Colors.teal,
        ),
        body: const Center(
          child: Text(
            'Welcome to Scaffold Screen with FAB!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
