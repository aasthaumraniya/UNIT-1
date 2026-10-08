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
        appBar: AppBar(title: const Text('Responsive Dashboard')),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile View: Single Column List
              return _buildMobileView();
            } else if (constraints.maxWidth < 1000) {
              // Tablet View: Two Column Grid
              return _buildTabletView();
            } else {
              // Desktop View: Three Panel Layout
              return _buildDesktopView();
            }
          },
        ),
      ),
    );
  }

  Widget _buildMobileView() {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 8,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: CircleAvatar(child: Text('${index + 1}')),
          title: Text('Mobile Dashboard Item #${index + 1}'),
          subtitle: const Text('Single Column Mobile View'),
        ),
      ),
    );
  }

  Widget _buildTabletView() {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.5,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: 8,
      itemBuilder: (context, index) => Card(
        color: Colors.indigo.shade50,
        child: Center(
          child: ListTile(
            leading: Icon(Icons.dashboard, color: Colors.indigo.shade700),
            title: Text('Tablet Grid #${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Two Column Grid Layout'),
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopView() {
    return Row(
      children: [
        // Sidebar Panel
        Container(
          width: 220,
          color: Colors.grey.shade200,
          child: ListView(
            children: const [
              DrawerHeader(child: Center(child: Text('Navigation Sidebar', style: TextStyle(fontWeight: FontWeight.bold)))),
              ListTile(leading: Icon(Icons.dashboard), title: Text('Dashboard')),
              ListTile(leading: Icon(Icons.analytics), title: Text('Analytics')),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        // Main Content Area
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAlignment: CrossAlignment.start,
              children: [
                const Text('Main Dashboard Content Area', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    children: List.generate(
                      4,
                      (i) => Card(
                        color: Colors.teal.shade50,
                        child: Center(child: Text('Main Widget #${i + 1}', style: const TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Details Panel
        Container(
          width: 250,
          color: Colors.blue.shade50,
          padding: const EdgeInsets.all(16),
          child: const Column(
            crossAlignment: CrossAlignment.start,
            children: [
              Text('Details & Feed', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Divider(),
              Text('Detail item 1: System active'),
              SizedBox(height: 8),
              Text('Detail item 2: 99.9% Uptime'),
            ],
          ),
        ),
      ],
    );
  }
}
