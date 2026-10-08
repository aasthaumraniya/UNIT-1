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
        appBar: AppBar(title: const Text('Social Media Profile Header')),
        body: Column(
          children: [
            // Stack with Banner & Overlapping Avatar
            SizedBox(
              height: 220,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Banner Image Container
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.indigo.shade400, Colors.purple.shade400],
                      ),
                    ),
                    child: const Center(
                      child: Text('Profile Cover Banner', style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  // Overlapping Avatar
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 46,
                        backgroundColor: Colors.indigo.shade100,
                        child: const Icon(Icons.person, size: 50, color: Colors.indigo),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAlignment: CrossAlignment.start,
                children: [
                  Text('Rahul Sharma', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('@rahulsharma', style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(height: 12),
                  Text('Passionate Flutter & Dart developer creating responsive user experiences across platforms.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
