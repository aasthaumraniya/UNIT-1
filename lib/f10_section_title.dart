import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen One')),
      body: Column(
        crossAlignment: CrossAlignment.start,
        children: [
          const SectionTitle(title: 'Overview Section'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Content for Screen One overview.'),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenTwo()));
              },
              child: const Text('Go to Screen Two'),
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Two')),
      body: const Column(
        crossAlignment: CrossAlignment.start,
        children: [
          SectionTitle(title: 'Details Section'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Content for Screen Two details.'),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}
