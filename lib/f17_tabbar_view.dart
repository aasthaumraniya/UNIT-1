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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Media Library TabBar'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.photo), text: 'Photos'),
                Tab(icon: Icon(Icons.videocam), text: 'Videos'),
                Tab(icon: Icon(Icons.insert_drive_file), text: 'Files'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Photos Gallery Placeholder', style: TextStyle(fontSize: 20))),
              Center(child: Text('Videos Library Placeholder', style: TextStyle(fontSize: 20))),
              Center(child: Text('Documents & Files Placeholder', style: TextStyle(fontSize: 20))),
            ],
          ),
        ),
      ),
    );
  }
}
