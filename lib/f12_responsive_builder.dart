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
        appBar: AppBar(title: const Text('Responsive LayoutBuilder')),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile Layout (Column)
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Text('Mobile View (<600dp)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  _buildBox('Card 1', Colors.amber),
                  const SizedBox(height: 16),
                  _buildBox('Card 2', Colors.lightBlue),
                ],
              );
            } else {
              // Tablet/Desktop Layout (Row)
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAlignment: CrossAlignment.start,
                  children: [
                    const Text('Tablet/Desktop View (>=600dp)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: _buildBox('Card 1', Colors.amber)),
                          const SizedBox(width: 16),
                          Expanded(child: _buildBox('Card 2', Colors.lightBlue)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildBox(String title, Color color) {
    return Container(
      height: 150,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}
