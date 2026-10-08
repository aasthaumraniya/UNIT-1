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
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Multi-Tab Profile Screen'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.grid_on), text: 'Photos Grid'),
                Tab(icon: Icon(Icons.list), text: 'Activity Feed'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Photo Grid Tab
              GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 12,
                itemBuilder: (context, index) => Container(
                  color: Colors.indigo.shade100,
                  child: Center(
                    child: Icon(Icons.photo, color: Colors.indigo.shade700, size: 36),
                  ),
                ),
              ),
              // Activity Feed Tab
              ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: Text('Activity Post #${index + 1}'),
                    subtitle: Text('User completed milestone #${index + 1}'),
                    trailing: Text('${index + 1}h ago'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
