import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWide = screenWidth > 600;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('MediaQuery Responsive Form')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAlignment: CrossAlignment.start,
            children: [
              Text(
                'Registration Form (${isWide ? "Two Columns" : "Single Column"})',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              if (isWide)
                const Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder()))),
                        SizedBox(width: 16),
                        Expanded(child: TextField(decoration: InputDecoration(labelText: 'Last Name', border: OutlineInputBorder()))),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(child: TextField(decoration: InputDecoration(labelText: 'Email Address', border: OutlineInputBorder()))),
                        SizedBox(width: 16),
                        Expanded(child: TextField(decoration: InputDecoration(labelText: 'Phone Number', border: OutlineInputBorder()))),
                      ],
                    ),
                  ],
                )
              else
                const Column(
                  children: [
                    TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder())),
                    SizedBox(height: 16),
                    TextField(decoration: InputDecoration(labelText: 'Last Name', border: OutlineInputBorder())),
                    SizedBox(height: 16),
                    TextField(decoration: InputDecoration(labelText: 'Email Address', border: OutlineInputBorder())),
                    SizedBox(height: 16),
                    TextField(decoration: InputDecoration(labelText: 'Phone Number', border: OutlineInputBorder())),
                  ],
                ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
                child: const Text('Submit Form'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
